from bs4 import BeautifulSoup
import requests
import lxml
from selenium import webdriver
import csv

url = "https://www.pracuj.pl/praca/german;kw"
new_url = "https://www.pracuj.pl/praca/german;kw?pn=27"
r = requests.get(new_url)

if r.status_code == 200:

    html_text = r.text
    soup = BeautifulSoup(html_text, 'lxml')
    jobs = soup.find_all('h2', class_="tiles_h1yuv00i")


    with open('list_jobs.txt', 'a', encoding='utf-8') as file:

        if jobs:
            for job in jobs:
                job_title = (job.text.strip())
                print(job_title)
                file.write(f"{job_title}\n")


        else:
            print("Job element not found")
            file.write("No elements transfered ", 'a')




else:
    print(f"Failed to retrieve the webpage. Status code: {r.status_code}")