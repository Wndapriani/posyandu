<?php

namespace App\Models;

use CodeIgniter\Model;

class User extends Model
{
    protected $DBGroup          = 'default';
    protected $table            = 'users';
    protected $primaryKey       = 'username';
    protected $useAutoIncrement = false;
    protected $returnType       = 'array';
    protected $useSoftDeletes   = false;
    protected $protectFields    = true;
    protected $allowedFields    = [
        'username',
        'password',
        'role',
        'nama_lengkap',
        'email',
        'hp',
        'alamat',
        'photo',
        'faskes',
        'registrar',
        'dibuat', 
        'wilayah_kerja'
    ];

    // Validation
    protected $validationRules      = [];
    protected $validationMessages   = [];
    protected $skipValidation       = false;
    protected $cleanValidationRules = true;

    // Callbacks
    protected $allowCallbacks = true;
    protected $beforeInsert   = [];
    protected $afterInsert    = [];
    protected $beforeUpdate   = [];
    protected $afterUpdate    = [];
    protected $beforeFind     = [];
    protected $afterFind      = [];
    protected $beforeDelete   = [];
    protected $afterDelete    = [];

    function login($username, $password)
    {
        $user = $this->join('wilayah', 'wilayah.id = users.wilayah_kerja', 'left')->select('wilayah.nama, users.*')->where('username', $username)->orWhere('email', $username)->find();
        
        if (empty($user))
            return [false, 'Username <b>"' . $username . '"</b> Tidak ditemukan'];
        $user = $user[0];
        if (!password_verify($password, $user['password']))
            return [false, 'Passowrd untuk User dengan Username <b>"' . $username . '"</b> Salah'];


        $session = session();
        $session->set('login', $user);
        return [true, ''];
    }
}
