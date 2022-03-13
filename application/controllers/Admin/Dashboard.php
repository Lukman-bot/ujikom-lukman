<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{
    public function Index()
    {
        $data=[
            'title'                 => 'Hotel AYO!! | Dashboard',
            'judul'                 => 'Dashboard',
            'subjudul'              => 'Dashboard',
            'breadcrumb1'           => 'Dashboard',
            'breadcrumb2'           => 'Dashboard',
            'menu_navigation'       => 'Master',
            'submenu_navigation'    => 'Dashboard',
        ];
        $this->template->load('Admin/Template','Admin/Dashboard/Index',$data);
    }
}