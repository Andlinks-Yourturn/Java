package com.andlinks.scholarship.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import org.hibernate.annotations.Where;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import java.util.Set;

/**
 * Created by 陈亚兰 on 2017/8/28.
 */
@Entity
@Table(name="sys_permission")
@Where(clause = "deleted=0")
public class PermissionDO extends BaseEntity {
    private static final long serialVersionUID = -7438016837706780504L;

    private String permissionNameCN; //权限中文名

    private String permissionNameEN;//权限英文名

    private Set<RoleDO> roles;
    @Column(name="permission_name_cn")
    public String getPermissionNameCN() {
        return permissionNameCN;
    }

    public void setPermissionNameCN(String permissionNameCN) {
        this.permissionNameCN = permissionNameCN;
    }

    @Column(name="permission_name_en")
    public String getPermissionNameEN() {
        return permissionNameEN;
    }

    public void setPermissionNameEN(String permissionNameEN) {
        this.permissionNameEN = permissionNameEN;
    }

    @JsonBackReference
    @ManyToMany(mappedBy = "permissions")
    public Set<RoleDO> getRoles() {
        return roles;
    }

    public void setRoles(Set<RoleDO> roles) {
        this.roles = roles;
    }
}
