package com.andlinks.scholarship.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import org.hibernate.annotations.Where;

import javax.persistence.*;
import java.util.Set;

/**
 * Created by 陈亚兰 on 2017/8/28.
 */
@Entity
@Table(name="sys_role")
@Where(clause = "deleted=0")
public class RoleDO extends BaseEntity {

    private static final long serialVersionUID = 110167462004725085L;

    private String roleName;//角色名

    private Set<PermissionDO> permissions;

    private Set<UserProfileDO> userProfileDOS;

    @Column(name="role_name")
    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name="role_permission",
               joinColumns = {@JoinColumn(name="role_id",referencedColumnName = "id")},
               inverseJoinColumns = {@JoinColumn(name="permission_id",referencedColumnName = "id")})
    public Set<PermissionDO> getPermissions() {
        return permissions;
    }

    public void setPermissions(Set<PermissionDO> permissions) {
        this.permissions = permissions;
    }

    @JsonBackReference
    @ManyToMany(mappedBy = "roles")
    public Set<UserProfileDO> getUserProfileDOS() {
        return userProfileDOS;
    }

    public void setUserProfileDOS(Set<UserProfileDO> userProfileDOS) {
        this.userProfileDOS = userProfileDOS;
    }

}
