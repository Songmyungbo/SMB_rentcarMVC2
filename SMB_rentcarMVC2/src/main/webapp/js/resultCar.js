document.addEventListener('DOMContentLoaded', function() {
    const rentalDate = document.getElementById('rday');
    
    const today = new Date();
    const todayFormatted = today.toISOString().split('T')[0];
    rentalDate.setAttribute('min', todayFormatted);
    
    rentalDate.addEventListener('change', function() {
        const selectedDate = new Date(this.value);
        const minDate = new Date(todayFormatted);
        
        if (selectedDate < minDate) {
            this.value = todayFormatted;
        }
    });
});