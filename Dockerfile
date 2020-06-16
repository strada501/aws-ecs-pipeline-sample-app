FROM node:12

# �A�v���P�[�V�����f�B���N�g�����쐬����
WORKDIR /usr/src/app

# �A�v���P�[�V�����̈ˑ��֌W���C���X�g�[������
# ���C���h�J�[�h���g�p���āApackage.json �� package-lock.json �̗������m���ɃR�s�[�����悤�ɂ��܂��B
# �\�ł���� (npm@5+)
COPY package*.json ./

RUN npm install
# �{�ԗp�ɃR�[�h���쐬���Ă���ꍇ
# RUN npm install --only=production

# �A�v���P�[�V�����̃\�[�X���o���h������
COPY . .

EXPOSE 8080
CMD [ "node", "app.js" ]