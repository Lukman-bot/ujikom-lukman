<?php
defined('BASEPATH') or exit('No direct script access allowed');

class FasilitasHotel extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Mod_fasilitashotel','MFH');
        cek_login();
    }

    public function Index()
    {
        $data=[
            'title'                 => 'Hotel AYO!! | Master Data',
            'judul'                 => 'Master Data',
            'subjudul'              => 'Fasilitas Hotel',
            'breadcrumb1'           => 'Master Data',
            'breadcrumb2'           => 'Fasilitas Hotel',
            'menu_navigation'       => 'Master',
            'submenu_navigation'    => 'Fasilitas Hotel',
            'datafasilitashotel'    => $this->MFH->Ambil(['jenisfasilitas'=>'Hotel'])->result()
        ];
        $this->template->load('Admin/Template', 'Admin/FasilitasHotel/Index',$data);
    }

    public function Add()
    {
        $this->form_validation->set_rules('namafasilitas','Nama Fasilitas','required');
        $this->form_validation->set_rules('is_active', 'is_active', 'required');
        $this->form_validation->set_message('required','{field} tidak boleh kosong.!');
        if($this->form_validation->run()== FALSE) 
        {
            $data=[
                'title'                 => 'Hotel AYO!! | Master Data',
                'judul'                 => 'Master Data',
                'subjudul'              => 'Tambah Fasilitas Hotel',
                'breadcrumb1'           => 'Master Data',
                'breadcrumb2'           => 'Fasilitas Hotel',
                'menu_navigation'       => 'Master',
                'submenu_navigation'    => 'Fasilitas Hotel',
            ];
            $this->template->load('Admin/Template', 'Admin/FasilitasHotel/Add',$data);
        }else {
            $acak = rand(1000,9999);
            $foto = $acak . '-IMG-Picture.jpg';
            $config['upload_path']          = './upload/hotel';
            $config['allowed_types']        = 'jpg|jpeg|png|JPG|PNG';
            $config['max_size']             = 6024;
            $config['max_width']            = 0;
            $config['max_height']           = 0;
            $config['overwrite']            = TRUE;
            $config['file_ext_tolower']     = TRUE;
            $config['file_name']            = $foto;
            $this->load->library('upload', $config);
            if(!$this->upload->do_upload('galery')) {
                $this->session->set_flashdata('pesan','Data gagal di upload.!');
                redirect('Admin/FasilitasHotel','refresh');
            }else {
                $data=[
                    'namafasilitas'     => $this->input->post('namafasilitas'),
                    'is_active'         => $this->input->post('is_active'),
                    'picture'           => $foto,
                    'jenisfasilitas'    => 'Hotel'
                ];
                $this->MFH->Simpan($data);
                
                $this->session->set_flashdata('pesan','Data berhasil di simpan.!');
                redirect('Admin/FasilitasHotel', 'refresh');
            }
        }
    }

    public function Ubah($id = null)
    {
        $this->form_validation->set_rules('namafasilitas','Nama Fasilitas','required');
        $this->form_validation->set_rules('is_active', 'is_active', 'required');
        $this->form_validation->set_message('required','{field} tidak boleh kosong.!');
        if ($this->form_validation->run()== FALSE) 
        {
            $data=[
                'title'                 => 'Hotel AYO!! | Master Data',
                'judul'                 => 'Master Data',
                'subjudul'              => 'Tambah Fasilitas Hotel',
                'breadcrumb1'           => 'Master Data',
                'breadcrumb2'           => 'Fasilitas Hotel', 
                'menu_navigation'       => 'Master',
                'submenu_navigation'    => 'Fasilitas Hotel',  
                'id'                    => $id,
                'dataubahfasilitas'     => $this->MFH->Ambil(['idfasilitas'=>$id])->result()
            ];
            $this->template->load('Admin/Template', 'Admin/FasilitasHotel/Ubah',$data);
        } else {
            $acak = rand(1000,9999);
            $foto = $acak . '-IMG-Picture.jpg';
            $config['upload_path']          = './upload/hotel';
            $config['allowed_types']        = 'jpg|jpeg|png|JPG|PNG';
            $config['max_size']             = 6024;
            $config['max_width']            = 0;
            $config['max_height']           = 0;
            $config['overwrite']            = TRUE;
            $config['file_ext_tolower']     = TRUE;
            $config['file_name']            = $foto;
            $this->load->library('upload', $config);
            if (!$this->upload->do_upload('galery')) {
                // Jika diubah tanpa gambar 
                $dataubahtanpagambar=[
                    'namafasilitas' => $this->input->post('namafasilitas'),
                    'is_active'     => $this->input->post('is_active')
                ];
                $this->MFH->Ubah($dataubahtanpagambar,['idfasilitas' => $id]);
                $this->session->set_flashdata('pesan','Data berhasil di perbaharui.!');
                redirect('Admin/FasilitasHotel','refresh');
            } else {
                // Jika di ubah dengan gambar
                $data=[
                    'namafasilitas'     => $this->input->post('namafasilitas'),
                    'is_active'         => $this->input->post('is_active'),
                    'picture'           => $foto,
                ];
                $this->MFH->Ubah($data,['idfasilitas'=> $id]);
                
                $this->session->set_flashdata('pesan','Data berhasil di Perbaharui.!');
                redirect('Admin/FasilitasHotel', 'refresh');
            }
        }
    }
    
}