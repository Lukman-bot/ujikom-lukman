<?php
defined('BASEPATH') or exit('No direct script access allowed');

class TipeKamar extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Mod_tipekamar','MTK');
        cek_login();
    }

    public function Index()
    {
        $data=[
            'title'                 => 'Hotel AYO!! | Master Data',
            'judul'                 => 'Master Data',
            'subjudul'              => 'Tipe Kamar',
            'breadcrumb1'           => 'Master Data',
            'breadcrumb2'           => 'Tipe Kamar',
            'menu_navigation'       => 'Master',
            'submenu_navigation'    => 'Fasilitas Hotel',
            'datatipekamar'         => $this->MTK->AmbilALL()->result()
        ];
        $this->template->load('Admin/Template', 'Admin/TipeKamar/Index',$data);
    }

    public function Add()
    {
        $this->form_validation->set_rules('tipekamar','Tipe Kamar','required');
        $this->form_validation->set_rules('is_active', 'is_active', 'required');
        $this->form_validation->set_message('required','{field} tidak boleh kosong');
        if($this->form_validation->run() == false) 
        {
            $data = [
                'title'                 => 'Hotel AYO!! | Dashboard',
                'judul'                 => 'Master Data',
                'subjudul'              => 'Tambah Tipe Kamar',
                'breadcrumb1'           => 'Tambah Tipe Kamar',
                'breadcrumb2'           => 'Tipe Kamar',   
                'menu_navigation'       => 'Master',
                'submenu_navigation'    => 'Fasilitas Hotel',                
            ];
            $this->template->load('Admin/Template', 'Admin/TipeKamar/Add',$data);
        }else{
            $data=[
                'tipekamar'     => $this->input->post('tipekamar',TRUE),
                'is_active'     => $this->input->post('is_active', TRUE)
            ];
            $this->MTK->Simpan($data);
            $this->session->set_flashdata('pesan','Data berhasil di simpan.!');
            redirect('Admin/TipeKamar', 'refresh');
        }
    }

    public function Ubah($id=null)
    {
        $this->form_validation->set_rules('tipekamar','Tipe Kamar','required');
        $this->form_validation->set_rules('is_active', 'is_active', 'required');
        $this->form_validation->set_message('required','{field} tidak boleh kosong');
        if($this->form_validation->run() == FALSE)
        {
            $data = [
                'title'                 => 'Hotel AYO!! | Dashboard',
                'judul'                 => 'Master Data',
                'subjudul'              => 'Ubah Tipe Kamar',
                'breadcrumb1'           => 'Ubah Tipe Kamar',
                'breadcrumb2'           => 'Tipe Kamar',
                'menu_navigation'       => 'Master',
                'submenu_navigation'    => 'Fasilitas Hotel',
                'datatipekamar'         => $this->MTK->Ambil(['idtipekamar'=> $id])->result(),
                'id'                    => $id
            ];
            $this->template->load('Admin/Template', 'Admin/TipeKamar/Ubah',$data);
        } else {
            $data=[
                'tipekamar'     => $this->input->POST('tipekamar',TRUE),
                'is_active'     => $this->input->post('is_active', TRUE)
            ];
            $this->MTK->Ubah($data,['idtipekamar'=>$id]);
            $this->session->set_flashdata('pesan','Data Tipe Kamar berhasil di perbaharui');
            redirect('Admin/TipeKamar', 'refresh');
        }
    }
    
}