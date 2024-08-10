var perbulan  = document.getElementById('perbulan-chart').getContext('2d');
var perhari   = document.getElementById('perhari-chart').getContext('2d');
var pertahun  = document.getElementById('pertahun-chart').getContext('2d');


checkdata = $(".count");

surat_masuk_januari     = $(".count").attr("surat_masuk_januari");
surat_masuk_febuary     = $(".count").attr("surat_masuk_febuary");
surat_masuk_maret       = $(".count").attr("surat_masuk_maret");
surat_masuk_april       = $(".count").attr("surat_masuk_april");
surat_masuk_mei         = $(".count").attr("surat_masuk_mei");
surat_masuk_juni        = $(".count").attr("surat_masuk_juni");
surat_masuk_juli        = $(".count").attr("surat_masuk_juli");
surat_masuk_agustus     = $(".count").attr("surat_masuk_agustus");
surat_masuk_september   = $(".count").attr("surat_masuk_september");
surat_masuk_oktober     = $(".count").attr("surat_masuk_oktober");
surat_masuk_november    = $(".count").attr("surat_masuk_november");
surat_masuk_desember    = $(".count").attr("surat_masuk_desember");

surat_keluar_januari     = $(".count").attr("surat_keluar_januari");
surat_keluar_febuary     = $(".count").attr("surat_keluar_febuary");
surat_keluar_maret       = $(".count").attr("surat_keluar_maret");
surat_keluar_april       = $(".count").attr("surat_keluar_april");
surat_keluar_mei         = $(".count").attr("surat_keluar_mei");
surat_keluar_juni        = $(".count").attr("surat_keluar_juni");
surat_keluar_juli        = $(".count").attr("surat_keluar_juli");
surat_keluar_agustus     = $(".count").attr("surat_keluar_agustus");
surat_keluar_september   = $(".count").attr("surat_keluar_september");
surat_keluar_oktober     = $(".count").attr("surat_keluar_oktober");
surat_keluar_november    = $(".count").attr("surat_keluar_november");
surat_keluar_desember    = $(".count").attr("surat_keluar_desember");

surat_masuk_senin        = $(".count").attr("surat_masuk_senin");
surat_masuk_selasa       = $(".count").attr("surat_masuk_selasa");
surat_masuk_rabu         = $(".count").attr("surat_masuk_rabu");
surat_masuk_kamis        = $(".count").attr("surat_masuk_kamis");
surat_masuk_jumat        = $(".count").attr("surat_masuk_jumat");
surat_masuk_sabtu        = $(".count").attr("surat_masuk_sabtu");
surat_masuk_minggu       = $(".count").attr("surat_masuk_minggu");

surat_keluar_senin        = $(".count").attr("surat_keluar_senin");
surat_keluar_selasa       = $(".count").attr("surat_keluar_selasa");
surat_keluar_rabu         = $(".count").attr("surat_keluar_rabu");
surat_keluar_kamis        = $(".count").attr("surat_keluar_kamis");
surat_keluar_jumat        = $(".count").attr("surat_keluar_jumat");
surat_keluar_sabtu        = $(".count").attr("surat_keluar_sabtu");
surat_keluar_minggu       = $(".count").attr("surat_keluar_minggu");


surat_masuk_tahun_2023 = $(".count").attr("surat_masuk_tahun_2023");
surat_masuk_tahun_2024 = $(".count").attr("surat_masuk_tahun_2024");
surat_masuk_tahun_2025 = $(".count").attr("surat_masuk_tahun_2025");
surat_masuk_tahun_2026 = $(".count").attr("surat_masuk_tahun_2026");
surat_masuk_tahun_2027 = $(".count").attr("surat_masuk_tahun_2027");

surat_keluar_tahun_2023 = $(".count").attr("surat_keluar_tahun_2023");
surat_keluar_tahun_2024 = $(".count").attr("surat_keluar_tahun_2024");
surat_keluar_tahun_2025 = $(".count").attr("surat_keluar_tahun_2025");
surat_keluar_tahun_2026 = $(".count").attr("surat_keluar_tahun_2026");
surat_keluar_tahun_2027 = $(".count").attr("surat_keluar_tahun_2027");


var perbulan_chart = new Chart(perbulan, {
    type: 'line',
    data: {
        labels: ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'],
        datasets: [{
            label: 'Surat Masuk',
            lineTension: 0.3,
            backgroundColor: "rgba(78, 115, 223, 0.05)",
            borderColor: "rgba(78, 115, 223, 1)",
            pointRadius: 3,
            pointBackgroundColor: "rgba(78, 115, 223, 1)",
            pointBorderColor: "rgba(78, 115, 223, 1)",
            pointHoverRadius: 3,
            pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
            pointHoverBorderColor: "rgba(78, 115, 223, 1)",
            pointHitRadius: 10,
            pointBorderWidth: 2,
            data: [surat_masuk_januari, surat_masuk_febuary, surat_masuk_maret, surat_masuk_april, surat_masuk_mei, surat_masuk_juni, surat_masuk_juli, surat_masuk_agustus, surat_masuk_september, surat_masuk_oktober, surat_masuk_november, surat_masuk_desember],
            borderWidth: 1,
        }, {
            label: 'Surat Keluar',
            lineTension: 0.3,
            backgroundColor: "rgba(78, 115, 223, 0.05)",
            borderColor: "rgba(255, 0, 0, 1)", // ubah menjadi merah
            pointRadius: 3,
            pointBackgroundColor: "rgba(255, 0, 0, 1)", // ubah menjadi merah
            pointBorderColor: "rgba(255, 0, 0, 1)", // ubah menjadi merah
            pointHoverRadius: 3,
            pointHoverBackgroundColor: "rgba(255, 0, 0, 1)", // ubah menjadi merah
            pointHoverBorderColor: "rgba(255, 0, 0, 1)", // ubah menjadi merah
            pointHitRadius: 10,
            pointBorderWidth: 2,
            data: [surat_keluar_januari, surat_keluar_febuary, surat_keluar_maret, surat_keluar_april, surat_keluar_mei, surat_keluar_juni, surat_keluar_juli, surat_keluar_agustus, surat_keluar_september, surat_keluar_oktober, surat_keluar_november, surat_keluar_desember],
            borderWidth: 1,
        }]
    },
    options: {
        responsive: false,
        maintainAspectRatio: false,
        animations: {
            y: {
              easing: 'easeInOutElastic',
              from: (ctx) => {
                if (ctx.type === 'data') {
                  if (ctx.mode === 'default' && !ctx.dropped) {
                    ctx.dropped = true;
                    return 0;
                  }
                }
              }
            }
          },
        layout: {
            padding: {
              left: 10,
              right: 25,
              top: 25,
              bottom: 0
            }
          },
        scales: {
          y: {
            beginAtZero: true
          }
        }
      }
});

perbulan_chart.render();



var perhari_chart = new Chart(perhari, {
  type: 'line',
  data: {
    labels: ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu', 'Minggu'],
    datasets: [{
      label: 'Surat Masuk',
      lineTension: 0.3,
      backgroundColor: "rgba(78, 115, 223, 0.05)",
      borderColor: "rgba(78, 115, 223, 1)",
      pointRadius: 3,
      pointBackgroundColor: "rgba(78, 115, 223, 1)",
      pointBorderColor: "rgba(78, 115, 223, 1)",
      pointHoverRadius: 3,
      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
      pointHitRadius: 10,
      pointBorderWidth: 2,
      data: [surat_masuk_senin, surat_masuk_selasa, surat_masuk_rabu, surat_masuk_kamis, surat_masuk_jumat, surat_masuk_sabtu, surat_masuk_minggu],
      borderWidth: 1,
    }, {
      label: 'Surat Keluar',
      lineTension: 0.3,
      backgroundColor: "rgba(78, 115, 223, 0.05)",
      borderColor: "rgba(255, 0, 0, 1)", // ubah menjadi merah
      pointRadius: 3,
      pointBackgroundColor: "rgba(255, 0, 0, 1)", // ubah menjadi merah
      pointBorderColor: "rgba(255, 0, 0, 1)", // ubah menjadi merah
      pointHoverRadius: 3,
      pointHoverBackgroundColor: "rgba(255, 0, 0, 1)", // ubah menjadi merah
      pointHoverBorderColor: "rgba(255, 0, 0, 1)", // ubah menjadi merah
      pointHitRadius: 10,
      pointBorderWidth: 2,
      data: [surat_keluar_senin, surat_keluar_selasa, surat_keluar_rabu, surat_keluar_kamis, surat_keluar_jumat, surat_keluar_sabtu, surat_keluar_minggu],
      borderWidth: 1,
    }]
  },
  options: {
    responsive: true, // Mengubah menjadi true untuk mengaktifkan responsif
    maintainAspectRatio: false,
    animation: {
      duration: 0, // Mengubah durasi animasi menjadi 0
    },
    layout: {
      padding: {
        left: 10,
        right: 25,
        top: 25,
        bottom: 0
      }
    },
    scales: {
      y: {
        beginAtZero: true
      }
    }
  }
});


perhari_chart.render();


var pertahun_chart = new Chart(pertahun, {
  type: 'line',
  data: {
    labels: ['2023', '2024', '2025', '2026', '2027'],
    datasets: [{
      label: 'Surat Masuk',
      lineTension: 0.3,
      backgroundColor: "rgba(78, 115, 223, 0.05)",
      borderColor: "rgba(78, 115, 223, 1)",
      pointRadius: 3,
      pointBackgroundColor: "rgba(78, 115, 223, 1)",
      pointBorderColor: "rgba(78, 115, 223, 1)",
      pointHoverRadius: 3,
      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
      pointHitRadius: 10,
      pointBorderWidth: 2,
      data: [surat_masuk_tahun_2023, surat_masuk_tahun_2024, surat_masuk_tahun_2025, surat_masuk_tahun_2026, surat_masuk_tahun_2027],
      borderWidth: 1,
    }, {
      label: 'Surat Keluar',
      lineTension: 0.3,
      backgroundColor: "rgba(78, 115, 223, 0.05)",
      borderColor: "rgba(255, 0, 0, 1)", // ubah menjadi merah
      pointRadius: 3,
      pointBackgroundColor: "rgba(255, 0, 0, 1)", // ubah menjadi merah
      pointBorderColor: "rgba(255, 0, 0, 1)", // ubah menjadi merah
      pointHoverRadius: 3,
      pointHoverBackgroundColor: "rgba(255, 0, 0, 1)", // ubah menjadi merah
      pointHoverBorderColor: "rgba(255, 0, 0, 1)", // ubah menjadi merah
      pointHitRadius: 10,
      pointBorderWidth: 2,
      data: [surat_keluar_tahun_2023, surat_keluar_tahun_2024, surat_keluar_tahun_2025, surat_keluar_tahun_2026, surat_keluar_tahun_2027],
      borderWidth: 1,
    }]
  },
  options: {
    responsive: true, // Mengubah menjadi true untuk mengaktifkan responsif
    maintainAspectRatio: false,
    animation: {
      duration: 0, // Mengubah durasi animasi menjadi 0
    },
    layout: {
      padding: {
        left: 10,
        right: 25,
        top: 25,
        bottom: 0
      }
    },
    scales: {
      y: {
        beginAtZero: true
      }
    }
  }
});


pertahun_chart.render();