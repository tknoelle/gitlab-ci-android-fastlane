FROM jangrewe/gitlab-ci-android

RUN apt-get update
RUN apt-get install -qqy android-tools-adb
RUN apt-get install -qqy build-essential
RUN apt-get install -qqy rubygems ruby-dev
RUN apt-get install -qqy --no-install-recommends qemu-kvm
RUN /sdk/tools/bin/sdkmanager --verbose 'system-images;android-25;google_apis;armeabi-v7a'
RUN gem install fastlane -NV
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
