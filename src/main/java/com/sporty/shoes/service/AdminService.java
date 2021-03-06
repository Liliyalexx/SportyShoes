package com.sporty.shoes.service;

import com.sporty.shoes.model.Admin;
import com.sporty.shoes.model.Login;
import com.sporty.shoes.repository.AdminRepository;
import org.springframework.stereotype.Service;

@Service
public class AdminService {
    private AdminRepository adminRepository;

    public AdminService(AdminRepository adminRepository) {
        this.adminRepository = adminRepository;
    }

    public Admin findById(Long id) {
        return adminRepository.findById(id).orElse(null);
    }

    public Admin findByUsernameAndPassword(String username, String password) {
        return adminRepository.findByLoginUsernameAndLoginPassword(username, password);
    }

    public Admin save(Admin admin) {
        return adminRepository.save(admin);
    }

    public Admin updatePassword(Long adminId, String newPassword) {
        Admin admin = findById(adminId);

        if (admin != null) {
            Login login = admin.getLogin();
            login.setPassword(newPassword);
            admin.setLogin(login);

            admin = save(admin);
        }

        return admin;
    }
}