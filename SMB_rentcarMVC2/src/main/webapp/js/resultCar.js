document.addEventListener('DOMContentLoaded', function() {
    
    const rentalDate = document.getElementById('rday');
    const ddaySelect = document.getElementById('dday');
    const useInSelect = document.getElementById('usein');
    const useWifiSelect = document.getElementById('usewifi');
    const useNaviSelect = document.getElementById('usenavi');
    const useSeatSelect = document.getElementById('useseat');
    const totalPriceDisplay = document.getElementById('totalPriceDisplay');
    const basePriceInput = document.getElementById('basePrice');
    const qtyInput = document.getElementById('qtyInput');

    const basePrice = parseInt(basePriceInput.value) || 0;
    const qty = parseInt(qtyInput.value) || 1;

    function calculateTotalPrice() {
        const days = parseInt(ddaySelect.value) || 1;
        const useInCost = (useInSelect.value === '1') ? 10000 * days : 0;
        const wifiCost = (useWifiSelect.value === '1') ? 10000 * days : 0;
        const seatCost = (useSeatSelect.value === '1') ? 10000 * days : 0; 

        const total = (basePrice * days * qty) + useInCost + wifiCost + seatCost;
        totalPriceDisplay.textContent = total.toLocaleString(); 
    }

    ddaySelect.addEventListener('change', calculateTotalPrice);
    useInSelect.addEventListener('change', calculateTotalPrice);
    useWifiSelect.addEventListener('change', calculateTotalPrice);
    useNaviSelect.addEventListener('change', calculateTotalPrice); 
    useSeatSelect.addEventListener('change', calculateTotalPrice);

    calculateTotalPrice();
});

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