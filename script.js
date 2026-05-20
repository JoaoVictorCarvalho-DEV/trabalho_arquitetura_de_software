document.addEventListener('DOMContentLoaded', () => {
    const toggleBtn = document.getElementById('toggleBtn');
    const statusLabel = document.getElementById('statusLabel');
    const dialogBox = document.getElementById('dialogBox');
    const closeDialog = document.getElementById('closeDialog');

    // Interatividade da ação de alteração de estado remota (RF003)
    toggleBtn.addEventListener('click', () => {
        if (statusLabel.textContent === 'LIGADO') {
            statusLabel.textContent = 'DESLIGADO';
            statusLabel.className = 'txt-danger';
        } else {
            statusLabel.textContent = 'LIGADO';
            statusLabel.className = 'txt-success';
        }
        
        // Abre a Tela de Diálogo exigida no barema da avaliação
        dialogBox.classList.remove('hidden');
    });

    closeDialog.addEventListener('click', () => {
        dialogBox.classList.add('hidden');
    });
});