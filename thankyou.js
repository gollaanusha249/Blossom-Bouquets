document.addEventListener("DOMContentLoaded", function () {
    const priceSelect = document.getElementById("price");
    const sortSelect = document.getElementById("sort");
    const productGrid = document.getElementById("product-grid");

    // Function to fetch products based on filters
    function fetchProducts() {
        const price = priceSelect.value;
        const sort = sortSelect.value;

        let url = `fetch-products.jsp?price=${price}&sort=${sort}`;

        fetch(url)
            .then(response => response.json())
            .then(products => {
                renderProducts(products);
            })
            .catch(error => console.error('Error fetching products:', error));
    }

    // Function to render products
    function renderProducts(products) {
        productGrid.innerHTML = '';

        products.forEach(product => {
            const productItem = document.createElement('div');
            productItem.className = 'product-item';

            productItem.innerHTML = `
                <a href="product-details.jsp?id=${product.id}">
                    <img src="${product.image}" alt="${product.name}">
                </a>
                <p>${product.name}</p>
                <div class="price">₹${product.price}</div>
            `;

            productGrid.appendChild(productItem);
        });
    }

    // Event listeners for filters
    priceSelect.addEventListener("change", fetchProducts);
    sortSelect.addEventListener("change", fetchProducts);

    // Initial fetch of products
    fetchProducts();
});
