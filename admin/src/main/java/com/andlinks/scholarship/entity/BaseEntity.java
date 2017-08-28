package com.andlinks.scholarship.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by 陈亚兰 on 2017/8/28.
 */
@MappedSuperclass
public class BaseEntity implements Serializable {

    private static final long serialVersionUID = 8276032533551067004L;

    private Long id;

    private Date createDate;

    private Date modifyDate;

    private Integer version;

    private Boolean deleted;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name="id")
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Column(name="create_time")
    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    @Column(name="update_time")
    public Date getModifyDate() {
        return modifyDate;
    }

    public void setModifyDate(Date modifyDate) {
        this.modifyDate = modifyDate;
    }

    @Column(name="version")
    public Integer getVersion() {
        return version;
    }

    public void setVersion(Integer version) {
        this.version = version;
    }

    @Column(name="deleted")
    public Boolean getDeleted() {
        return deleted;
    }

    public void setDeleted(Boolean deleted) {
        this.deleted = deleted;
    }

    @Override
    public int hashCode() {
        int hashCode= 17;
        hashCode+=getId()!=null?getId().hashCode()*31:0;
        return hashCode;
    }

    @Override
    public boolean equals(Object obj) {
       if(obj==null){
           return false;
       }
       if(this==obj){
           return true;
       }
       if(!BaseEntity.class.isAssignableFrom(obj.getClass())){
           return false;
       }
       BaseEntity other= (BaseEntity) obj;
       return getId()!=null?getId().equals(other.getId()):false;
    }

    @Override
    public String toString() {
        return String.format("Entity of type %s with id:%s",getClass().getName(),getId());
    }

    @PrePersist
    public void initdata(){
        setCreateDate(new Date());
        setModifyDate(new Date());
        setVersion(0);
        setDeleted(false);
    }

    @PreUpdate
    public void updatedata(){
        setModifyDate(new Date());
        setVersion(getVersion()+1);
    }

    @Transient
    @JsonBackReference
    public boolean isNew(){
        return getId()==null;
    }
}
