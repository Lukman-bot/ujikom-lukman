<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {

    public function Index()
    {
        $data = [
            'title' => "Hotel AYO!!"
        ];
        $this->template->load('Users/Template', 'Users/Login', $data);
    }

    public function Register()
    {
        $data = [
            'title' => "Hotel AYO!!"
        ];
        $this->template->load('Users/Template', 'Users/Register', $data);
    }

    public function Cek()
    {
        $this->form_validation->set_rules('username', 'Username', 'required');
        $this->form_validation->set_rules('password', 'Password', 'required');
        $this->form_validation->set_message('required', '{field} Tidak Boleh Kosong');
        if ($this->form_validation->run() == FALSE) {
            $data = [
                'title'     => 'Hotel AYO!'
            ];
            $this->template->load('Users/Template', 'Users/Login', $data);
        } else {
            $this->db->where('username', $this->input->post('username'));
            $this->db->where('password', $this->input->post('password'));
            $hasil = $this->db->get('tamu');
            if ($hasil->row_array() > 0) {
                foreach ($hasil->result() as $ketemu) {
                    $session = array(
                        'username'      => $ketemu->username,
                        'nik'           => $ketemu->nik,
                        'nama_user'     => $ketemu->nama
                    );
                    $this->session->set_userdata($session);
                }
                redirect('', 'refresh');
            } else {
                $data = [
                    'title'     => "Hotel AYO!"
                ];
                $this->session->set_flashdata('pesan', '<div class="alert alert-warning">Maaf, data username atau password tidak ditemukan.!</div>');
                $this->template->load('Users/Template', 'Users/Login', $data);
            }
        }
    }

    public function Logout()
    {
        $this->session->unset_userdata('username');
        $this->session->unset_userdata('nik');
        $this->session->unset_userdata('nama_user');
        redirect('','refresh');
    }

}

/* End of file Auth.php */
/* Location: ./application/controllers/Auth.php */