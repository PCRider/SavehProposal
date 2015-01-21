\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{savehproposal}[2014/11/16 Saveh Proposal v1.0.0]

\LoadClass[12pt,a4paper,BCOR=.7cm,headsepline,bibliography=totoc,chapterprefix=true]{scrbook}

\DeclareOption{MScProposal}{\def\@fordegree{\if@Latin M. Sc. Proposal\else درخواست تصویب پایان‌نامه‌ی کارشناسی ارشد \fi}}
\DeclareOption{PhDProposal}{\def\@fordegree{\if@Latin Ph. D. Proposal\else درخواست تصویب پایان‌نامه‌ی دکتری\fi}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrbook}}

\ProcessOptions\relax

\RequirePackage{amsmath,amsthm,scrpage2,rotating,scrhack,graphicx}
%حاشیه در اینجا تعیین می گردد
\RequirePackage[left=1.5cm,bottom=2.5cm,right=1.5cm,top=1cm,footskip=1cm]{geometry}
\sloppy\parindent1.5em

\RequirePackage[framemethod=TikZ]{mdframed}
\mdfdefinestyle{MyFrame}{%
	linecolor=black,
	outerlinewidth=2pt,
	roundcorner=10pt,
	innertopmargin=\baselineskip,
	innerbottommargin=\baselineskip,
	innerrightmargin=10pt,
	innerleftmargin=10pt,
	backgroundcolor=white}

\def\inthename{بسمه التعالی}
\def\@fordegree{درخواست تصویب پایان نامه کارشناسی ارشد}
\newcommand\azadlogo{\centering\normalsize\inthename\\
	\includegraphics[height=4cm]{logo.png}\\
	\LARGE\bfseries\@fordegree\\}


\newenvironment{موضوع}{\flushright\large\bfseries{عنوان تحقیق به فارسی:}\\}{}
\newenvironment{entitle}{\flushright\large\bfseries{عنوان تحقیق به انگلیسی:}\\}{}
\newenvironment{دانشجو}{\flushright\large\bfseries{۱-اطلاعات مربوط به دانشجو:}\\
	\
	}{}
\newenvironment{استاد}{\flushright\large\bfseries{۲-اطلاعات مربوط به استاد راهنما:}\\}{}
\newenvironment{مشاور}{\flushright\large\bfseries{۳-اطلاعات مربوط به استادان مشاور:}\\}{}
\newenvironment{اطلاعات}{\flushright\large\bfseries{۴-اطلاعات مربوط به پایان نامه:}\\}{}
\newenvironment{مسله}{\flushright\large\bfseries{۵-بیان مساله « تشریح ابعاد ، حدود مساله، معرفی دقیق مساله، بیان جنبه~های مجهول و مبهم و متغیر~های مربوط به پرسش های تحقیق ، منظور تحقیق »}\\}{}
\newenvironment{سوابق}{\flushright\large\bfseries{۶-سوابق مربوط « بیان مختصر سابقه تحقیقات انجام شده درباره موضوع و نتایج به دست آمده در داخل وخارج از كشور نظرهای علمی موجود درباره موضوع تحقیق »}\\}{}
\newenvironment{فرض}{\flushright\large\bfseries{۷- فرضیه ها « هر فرضیه به صورت یك جمله خبری نوشته شود .»}\\}{}
\newenvironment{اهداف}{\flushright\large\bfseries{۸-اهداف تحقیق « شامل اهداف علمی ، كاربردی ، وضرورت های خاص انجام تحقیق  »}\\}{}
\newenvironment{کاربرد}{\flushright\large\bfseries{۹- در صورت داشتن هدف كاربردی بیان نام بهره وران « اعم از موسسات آموزشی واجرایی و غیره » .}\\}{}
\newenvironment{جنبه}{\flushright\large\bfseries{۱۰-جنبه نوآوری و جدید بودن تحقیق در چیست؟ « این قسمت توسط استاد راهنما تكمیل شود » }\\}{}
\newenvironment{روش}{\flushright\large\bfseries{۱۱-روش کار}\\}{}
\newenvironment{زمانبندی}{\flushright\large\bfseries{۱۲-جدول زمانبندی مراحل انجام دادن تحقیق از زمان تصویب تا دفاع نهایی}\\}{}
\newenvironment{منابع}{\flushright\large\bfseries{۱۳- فهرست منابع و مآخذ (فارسی و غیر فارسی ) مورد استفاده در پایان نامه به شرح زیر :}\\}{}
\newenvironment{تاییدات}{\flushright\large\bfseries{۱۴-تأییدات}\\}{}
\newenvironment{کمیته}{\flushright\large\bfseries{نظریه كمیته تخصصی گروه}\\}{}
\newenvironment{نهایی}{\flushright\large\bfseries{تایید نهایی}\\}{}
