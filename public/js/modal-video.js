document.addEventListener('DOMContentLoaded', function () {
    // Ambil elemen-elemen penting
    const targetEl = document.getElementById('video-modal');
    const videoFrame = document.getElementById('videoFrame');
    const pathVideo = document.getElementById('path_video')?.value;
    const watchButton = document.getElementById('watchVideoBtn');

    if (!targetEl || !videoFrame || !watchButton || !pathVideo) {
        console.error('Modal video: Elemen yang dibutuhkan tidak ditemukan.');
        return;
    }

    // Konfigurasi modal (Flowbite atau custom Modal)
    const options = {
        placement: 'center',
        backdrop: 'dynamic',
        backdropClasses: 'bg-gray-900/50 dark:bg-gray-900/80 fixed inset-0 z-40',
        closable: true,
        onShow: () => {
            videoFrame.src = 'https://www.youtube.com/embed/' + pathVideo + '?autoplay=1';
        },
        onHide: () => {
            videoFrame.removeAttribute('src');
        },
    };

    const modal = new Modal(targetEl, options);

    // Event click tombol
    watchButton.addEventListener('click', () => {
        modal.show();
    });
});
