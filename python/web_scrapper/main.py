
'''
    Scrapper/main.py
'''


# -------------------------------

# IMPORTS

from webdrivermanager import GeckoDriverManager
from selenium import webdriver

# -------------------------------


# GLOBAL VARIABLES

gdd = GeckoDriverManager()
driver = None

target = "https://www.newworld.co.nz/"
mailer = target + "savings/virtualmailer/"

# Main method
def main():
    print("\n  ---- Supo Scrapper ----")

    print("\n\tDownload and install GeckoDriver...")
    gdd.download_and_install()

    print("\n\tStarting Firefox...")
    driver = webdriver.Firefox()

    print("\n\tNavigate to target...")
    driver.get(mailer)

    dl_elem = driver.find_element_by_css_selector('a.download-pdf')
    print(dl_elem.get_attribute('href'))               
    #download_btn_elem = driver.find_element_by_class_name()
    
    print("\n\tClosing Firefox...")
    driver.quit()

    print("\n  -------- Done. --------\n")

    return 0


# Application entry point
if __name__ == "__main__":
    main()


# EOF

