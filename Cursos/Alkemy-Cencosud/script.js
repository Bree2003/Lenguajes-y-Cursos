async function fetchData() {
    try {
        const response = await fetch('https://jsonplaceholder.typicode.com/todos');
        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Hubo un error al obtener los datos:', error);
    }
}

fetchData();
