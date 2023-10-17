use reqwest::Client;

#[tokio::main]
async fn main() {
    let client = Client::new();
    let res = client.get("https://httpbin.org/ip").send().await.unwrap();
    println!("Status: {}", res.status());
    println!("Headers:\n{:#?}", res.headers());
    println!("Body: \n{}", res.text().await.unwrap());
}
