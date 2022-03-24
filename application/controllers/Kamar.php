<?php

class Kamar extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Mod_kamaruser', 'MKU');
    }
    public function index()
    {

    }
    public function Detail($id = null)
    {
        $data = [
            'title'     => "Hotel AYO!!",
            'id'        => $id
        ];
        $this->template->load('Users/Template', 'Users/DetailKamar', $data);
    }
    public function getJsonDetailKamar($id=null)
    {
        $json = $this->MKU->getDataJson($id);
        echo json_encode($json);
    }
    public function Berirating1()
    {
        $this->form_validation->set_rules('id_user', 'ID User', 'required');
        $this->form_validation->set_rules('id_kamar', 'ID Kamar', 'required');
        if($this->form_validation->run() == TRUE) {
            $this->db->where('tamuid', $this->input->post('id_user'));
            $this->db->where('kamarid', $this->input->post('id_kamar'));
            $query = $this->db->get('rating');
            if($query->row_array() > 0) {
                $data = [
                    'value' => 1
                ];
                $this->db->set($data);
                $this->db->update('rating');
            } else {
                $data = [
                    'value'     => 1,
                    'tamuid'    => $this->input->post('id_user'),
                    'kamarid'   => $this->input->post('id_kamar')
                ];
                $this->db->insert('rating', $data);
            }
            echo json_encode(array('status'=>true));
        } else {
            echo json_encode(array('status'=>false));
        }
    }
    public function Berirating2()
    {
        $this->form_validation->set_rules('id_user', 'ID User', 'required');
        $this->form_validation->set_rules('id_kamar', 'ID Kamar', 'required');
        if($this->form_validation->run() == TRUE) {
            $this->db->where('tamuid', $this->input->post('id_user'));
            $this->db->where('kamarid', $this->input->post('id_kamar'));
            $query = $this->db->get('rating');
            if($query->row_array() > 0) {
                $data = [
                    'value' => 2
                ];
                $this->db->set($data);
                $this->db->update('rating');
            } else {
                $data = [
                    'value'     => 2,
                    'tamuid'    => $this->input->post('id_user'),
                    'kamarid'   => $this->input->post('id_kamar')
                ];
                $this->db->insert('rating', $data);
            }
            echo json_encode(array('status'=>true));
        } else {
            echo json_encode(array('status'=>false));
        }
    }
    public function Berirating3()
    {
        $this->form_validation->set_rules('id_user', 'ID User', 'required');
        $this->form_validation->set_rules('id_kamar', 'ID Kamar', 'required');
        if($this->form_validation->run() == TRUE) {
            $this->db->where('tamuid', $this->input->post('id_user'));
            $this->db->where('kamarid', $this->input->post('id_kamar'));
            $query = $this->db->get('rating');
            if($query->row_array() > 0) {
                $data = [
                    'value' => 3
                ];
                $this->db->set($data);
                $this->db->update('rating');
            } else {
                $data = [
                    'value'     => 3,
                    'tamuid'    => $this->input->post('id_user'),
                    'kamarid'   => $this->input->post('id_kamar')
                ];
                $this->db->insert('rating', $data);
            }
            echo json_encode(array('status'=>true));
        } else {
            echo json_encode(array('status'=>false));
        }
    }
    public function Berirating4()
    {
        $this->form_validation->set_rules('id_user', 'ID User', 'required');
        $this->form_validation->set_rules('id_kamar', 'ID Kamar', 'required');
        if($this->form_validation->run() == TRUE) {
            $this->db->where('tamuid', $this->input->post('id_user'));
            $this->db->where('kamarid', $this->input->post('id_kamar'));
            $query = $this->db->get('rating');
            if($query->row_array() > 0) {
                $data = [
                    'value' => 4
                ];
                $this->db->set($data);
                $this->db->update('rating');
            } else {
                $data = [
                    'value'     => 4,
                    'tamuid'    => $this->input->post('id_user'),
                    'kamarid'   => $this->input->post('id_kamar')
                ];
                $this->db->insert('rating', $data);
            }
            echo json_encode(array('status'=>true));
        } else {
            echo json_encode(array('status'=>false));
        }
    }
    public function Berirating5()
    {
        $this->form_validation->set_rules('id_user', 'ID User', 'required');
        $this->form_validation->set_rules('id_kamar', 'ID Kamar', 'required');
        if($this->form_validation->run() == TRUE) {
            $this->db->where('tamuid', $this->input->post('id_user'));
            $this->db->where('kamarid', $this->input->post('id_kamar'));
            $query = $this->db->get('rating');
            if($query->row_array() > 0) {
                $data = [
                    'value' => 5
                ];
                $this->db->set($data);
                $this->db->update('rating');
            } else {
                $data = [
                    'value'     => 5,
                    'tamuid'    => $this->input->post('id_user'),
                    'kamarid'   => $this->input->post('id_kamar')
                ];
                $this->db->insert('rating', $data);
            }
            echo json_encode(array('status'=>true));
        } else {
            echo json_encode(array('status'=>false));
        }
    }
    public function KirimKomentar()
    {
        $this->form_validation->set_rules('id_tamu', 'ID Tamu', 'required');
        $this->form_validation->set_rules('id_kamar', 'ID Kamar', 'required');
        $this->form_validation->set_rules('komentar', 'Komentar', 'required');
        if($this->form_validation->run() == TRUE){
            $data = [
                'review'        => $this->input->post('komentar'),
                'tamuid'        => $this->input->post('id_tamu'),
                'kamarid'       => $this->input->post('id_kamar'),
            ];
            $this->db->insert('review', $data);
        }
    }
}