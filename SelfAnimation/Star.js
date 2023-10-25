/*여기서 별을 만들어서 바디에 조립*/
export default class Star {
    constructor(number) {
        this.element = document.createElement('div');
        /*스타 클래스 적용*/
        this. element.classList.add('star');
        this. element.innerHTML = number;
       
        document.body.append(this.element);
    }
}
