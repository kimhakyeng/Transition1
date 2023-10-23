import './scroll-timeline.js';

const airplane = document.querySelector('.airplane');
const airplaneScrollTimeline = document.querySelector('.airplane-scroll-timeline');

airplane.animate(
    [
        { offsetDistance: '100%' },
        { offsetDistance: '0%' }
    ],
    {
        /*대기상태나 애니메이션이 끝날때 적용된다 both*/
        fill:'both',
        timeline: new ScrollTimeline({
            scrollOffsets: [
                { target: airplaneScrollTimeline, edge: 'start', threshold: 1 },
                { target: airplaneScrollTimeline, edge: 'end', threshold: 1 }
            ]
        })
    }
);