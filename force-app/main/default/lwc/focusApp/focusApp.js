import { LightningElement, track, wire } from 'lwc';
import getFocusSetting from '@salesforce/apex/FocusAppController.getFocusSetting';

export default class TimerApp extends LightningElement {

	running = true; //flip state
	timerId; //hold interval seconds
	minutes;
	seconds;
	timeVal; //hold timer result and display on screen
	@wire(getFocusSetting)
	timer;

	constructor() {
		super();
		console.log('constructor');
	}
	//Start timer
	startTimer() {
		if (this.running) {
     		this.running = false;
     		this.timerId = setInterval(() => {
				this.timer--;
				this.timeVal = this.displayTime(this.timer);

				if(this.timer <= 0 || this.timer < 1) {
					clearInterval(this.timerId);
					soundNotification();
				}
      		}, 1000);
    		}
	}

	displayTime(sec) {
		this.minutes = Math.floor(sec / 60);
		this.seconds = Math.floor(sec % 60);
		return `${this.minutes < 10? '0':''}${this.minutes}:${this.seconds<10?'0':''}${this.seconds}`;
	}
	stopTimer() {
		if (!this.running) {
			this.running = true;
			clearInterval(this.timerId);
		}
	}

	resetTimer() {
		this.timer = 70;
		this.running = false;
		clearInterval(this.timerId);
	}
	soundNotification(){
		var context = new AudioContext();
		var oscillator = context.createOscillator();
		oscillator.type = "triangle";
		oscillator.frequency.value = 400;
		oscillator.connect(context.destination);
		oscillator.start(); 
		// Beep for 500 milliseconds
		setTimeout(function () {
		oscillator.stop();
		}, 500);    
	}
	connectedCallback() {
		console.log('connected');
		this.timeVal = this.displayTime(this.timer);
	}
}