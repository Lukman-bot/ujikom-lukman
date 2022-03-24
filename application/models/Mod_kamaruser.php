<?php

class Mod_kamaruser extends CI_Model
{
    var $tabel = 'kamar'; 
    public function getDataJson($id)
    {
        $datakamar = $this->db->select('kamar.*, kamargalery.url, tipekamar.tipekamar')
            ->from($this->tabel)
            ->join('kamargalery', 'kamar.idkamar=kamargalery.kamarid', 'left')
            ->join('tipekamar', 'kamar.tipekamarid=tipekamar.idtipekamar', 'left')
            ->where('kamar.idkamar', $id)
            ->get()->result();
        $datafasilitaskamar = $this->db->select('fasilitas.namafasilitas,fasilitas.icon, detailfasilitaskamar.kamarid, kamar.namakamar')
            ->from('fasilitas')
            ->join('detailfasilitaskamar', 'fasilitas.idfasilitas=detailfasilitaskamar.fasilitasid', 'left')
            ->join('kamar', 'kamar.idkamar=detailfasilitaskamar.kamarid', 'left')
            ->where('detailfasilitaskamar.kamarid', $id)
            ->get()->result();
        $datarating = $this->db->select('AVG(value) as rata2')
            ->from('rating')
            ->where('kamarid', $id)
            ->get()->result();
        $datadetailkomentar = $this->db->select('review.idreview,tamu.nama,review.review,review.created_at, kamar.idkamar,kamar.namakamar')
            ->from('review')
            ->join('tamu', 'review.tamuid=tamu.idtamu', 'left')
            ->join('kamar', 'review.kamarid=kamar.idkamar', 'left')
            ->where('kamar.idkamar', $id)
            ->get()->result();
        return
        [
            'datakamar'     => $datakamar,
            'datafasilitas' => $datafasilitaskamar,
            'datarating'    => $datarating, 
            'datakomentar'  => $datadetailkomentar 
        ]; 
    }
}