export const operateForm = () => {
    // Clearボタンを押すと"result--hidden"が付与されて'convert-form--hidden'"が削除される
    console.log("動いたよ");
    document.querySelector('[data-role="result"]').classList.add('result--hidden');
    document.querySelector('[data-role="convert-form"]').classList.remove('convert-form--hidden');
};