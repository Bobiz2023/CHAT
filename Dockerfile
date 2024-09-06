# Use the base image with Android emulator pre-installed
FROM budtmo/docker-android:emulator_9.0

# Expose the port for the emulator
EXPOSE 6080

# Set environment variables
ENV EMULATOR_DEVICE="Samsung Galaxy S10"
ENV WEB_VNC=true

# Configure the device permissions
RUN apt-get update && apt-get install -y qemu-kvm

# Command to run the emulator
CMD ["sh", "-c", "emulator -avd ${EMULATOR_DEVICE} -no-audio -no-boot-anim -gpu swiftshader_indirect -verbose -port 6080"]
