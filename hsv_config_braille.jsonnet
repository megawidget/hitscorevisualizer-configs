local base_config = import 'common/base_config.jsonnet';
local judgment_text = '%B%n%C%n%A';
local make_judgment = import 'common/make_judgment.jsonnet';
local sad_swing_text = '<size=200%>☹</size>';

local zero = '⠀';
local one = '⠁';
local two = '⠂';
local three = '⠃';
local four = '⠄';
local five = '⠅';
local six = '⠆';
local seven = '⠇';
local eight = '⠈';
local nine = '⠉';

base_config {
  judgments: [
    {
      threshold: 115,
      text: '<size=300%>❤</size>',
      color: [
        1.0,
        1.0,
        1.0,
        1.0,
      ],
      fade: false,
    },
    {
      threshold: 101,
      text: judgment_text,
      color: [
        0.0,
        1.0,
        0.0,
        1.0,
      ],
      fade: false,
    },
    {
      threshold: 90,
      text: judgment_text,
      color: [
        1.0,
        0.980392158,
        0.0,
        1.0,
      ],
      fade: false,
    },
    {
      threshold: 80,
      text: judgment_text,
      color: [
        1.0,
        0.6,
        0.0,
        1.0,
      ],
      fade: true,
    },
    {
      threshold: 60,
      text: judgment_text,
      color: [
        1.0,
        0.0,
        0.0,
        1.0,
      ],
      fade: true,
    },
    {
      threshold: 0,
      text: judgment_text,
      color: [
        0.5,
        0.0,
        0.0,
        1.0,
      ],
      fade: true,
    },
  ],
  beforeCutAngleJudgments: [
    {
      threshold: 70,
      text: '',
    },
    {
      threshold: 0,
      text: sad_swing_text,
    },
  ],
  accuracyJudgments: [
    make_judgment(15, '★', 200),
    make_judgment(14, one + four, false, false, '#ffff00aa'),
    make_judgment(13, one + three, '#ffff00aa'),
    make_judgment(12, one + two, '#ffff00aa'),
    make_judgment(11, one + one, '#ffff00aa'),
    make_judgment(10, one + zero, '#ffff00aa'),
    make_judgment(9, zero + nine, '#ffff00aa'),
    make_judgment(8, zero + eight, '#ffff00aa'),
    make_judgment(7, zero + seven, '#ffff00aa'),
    make_judgment(6, zero + six, '#ffff00aa'),
    make_judgment(5, zero + five, '#ffff00aa'),
    make_judgment(4, zero + four, '#ffff00aa'),
    make_judgment(3, zero + three, '#ffff00aa'),
    make_judgment(2, zero + two, '#ffff00aa'),
    make_judgment(1, zero + one, '#ffff00aa'),
    make_judgment(0, zero + zero, '#ffff00aa'),
  ],
  afterCutAngleJudgments: [
    {
      threshold: 30,
      text: '',
    },
    {
      threshold: 0,
      text: sad_swing_text,
    },
  ],
  timeDependencyJudgments: null,
}
