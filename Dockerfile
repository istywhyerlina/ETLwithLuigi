# # For more information, please refer to https://aka.ms/vscode-docker-python
# FROM python:3.10.7

# ENV PYTHONDONTWRITEBYTECODE=1
# ENV PLAYWRIGHT_BROWSERS_PATH=/app/ms-playwright
# # Turns off buffering for easier container logging
# ENV PYTHONUNBUFFERED=1
# #..... whatever else you need 
# RUN pip install playwright
# # install manually all the missing libraries
# RUN apt-get install -y gconf-service libasound2 libatk1.0-0 libcairo2 libcups2 libfontconfig1 libgdk-pixbuf2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libxss1 fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils
# RUN PLAYWRIGHT_BROWSERS_PATH=/app/ms-playwright python -m playwright install --with-deps chromium

FROM python:3.11.4
#FROM python:3.9.20-slim



ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
ENV PYTHONPATH=/opt/orchestrator:$PYTHONPATH


COPY .  /app
#RUN pip install playwright==@1.46.0;
#&& playwright install --with-deps

#RUN apt-get update && apt-get install -y supervisor curl wget gnupg unzip 

# You should install the dependencies required to run the browsers.
# There's no need to install chromium separately
#RUN apt-get install -y libnss3 libasound2 libgbm-dev
RUN pip install --upgrade pip
RUN pip install -r /app/requirements.txt
# RUN pip install playwright
# RUN playwright install    

WORKDIR /app


#CMD ["python3", "-m luigi --module scrape Load  --local-scheduler"]