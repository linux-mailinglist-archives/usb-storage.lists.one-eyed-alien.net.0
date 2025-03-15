Return-Path: <usb-storage+bncBCWN5IOWUIIRBDWF2W7AMGQEBQCHNPA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x645.google.com (mail-pl1-x645.google.com [IPv6:2607:f8b0:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id D96AFA62BC2
	for <lists+usb-storage@lfdr.de>; Sat, 15 Mar 2025 12:20:48 +0100 (CET)
Received: by mail-pl1-x645.google.com with SMTP id d9443c01a7336-225505d1ca5sf48472405ad.2
        for <lists+usb-storage@lfdr.de>; Sat, 15 Mar 2025 04:20:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1742037647; cv=pass;
        d=google.com; s=arc-20240605;
        b=lMlgB5sR8K3HbRfFK/zn2owQis96NS/igk7nqOUfLFKRU053PQQoo7Hl5onMTgXz/k
         7IRLaMLmZ1PHxFrSrOClbKs1iCUuTGKxsr+4J8quhQK6G6U1WtC2HxVeCGgRs7VEe4BB
         yP02LNkPXn47CIqb51/ecoue2mamVFMvITIfhmj0fNjhBHypWiRZQUq0okRTe9J80gin
         CV5oBgdVfqTvMyOZDeLZXryK86oy/SJhY4tH0O4LWheABM1bx0dPbdSK9dc5blS5SSBq
         6SKM9/ihIzLlLQeH78TPhi7N1AmEqktcOO7GSKa7Yevvi0SgdogQRnwyZRyTyztAudfl
         BrDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:mime-version:references
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=WaVnFtQiG4Xbp6EtLPE67+SqeyaI8EXFnILyx8uAMec=;
        fh=jg+EWf0KnFH6VkuxILicKG4edJDgWp9gvmRFZ3E5tXc=;
        b=KufUb/CBnL/U5bHV+WTeytABW7C7vVbZxaeKIHTR2wdOhs0VDSFjyxOuqmL/6FfEbl
         HelTkBKmQijB9Hpwgtdw3RvztR6UXWAubVw+m+eHGLsSb9Wu5g9TlZnfbPwp28Gb2pwJ
         E5bJTbT9g1aJGp8c2fkvDOTmWQiOzVu3a7xM3Lmn5aaNTb+hQjhb+e+qhrTVmE5adwTF
         OuB+LaUYh+0dPkcFb/5Wl63M2rhibV0XlQQJxetwjJs7YwE6uYNJ/dW5djR16JLWgzbZ
         4dAzaLH5x4hU6olm04LDEKEzU8MX/rrPglZTPgT5vIpXnE9wmzYJ+AGefSmuBjvMym77
         8Vyg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@163.com header.s=s110527 header.b=MUhRA+dW;
       spf=pass (google.com: domain of daixin_tkzc@163.com designates 117.135.210.5 as permitted sender) smtp.mailfrom=daixin_tkzc@163.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1742037647; x=1742642447; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:mime-version:references:in-reply-to
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WaVnFtQiG4Xbp6EtLPE67+SqeyaI8EXFnILyx8uAMec=;
        b=A/TziVZpc97nL19fZihlmYro6qXYH7ZqCNxNl9L7c5x+gGiSrDzILIEMsC0FkuaZMZ
         vvIVnK9KemCdH1I4ggmpxbG7Pqr0QGFsVDkL0h1WMsQjWjgN0SYit/9bIN+m+bH90xRe
         IIW1R3XA8HuZIUybjG21tXERuu8c+JzNsSEiY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742037647; x=1742642447;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:message-id
         :mime-version:references:in-reply-to:subject:cc:to:from:date
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WaVnFtQiG4Xbp6EtLPE67+SqeyaI8EXFnILyx8uAMec=;
        b=wjhuDvk/0Q93jLyH31ZcR+2N1eT2O8klNKbYIKAkKkgg/rDi6eYdTwAizleV2ku0jB
         +Dy5mCvFAKJcFMh2ml54XQKKPGHcRH4q8qB15dCub9FVP+VoOHR2NUXnDio+pwjcvBkO
         WS9Sw1aajzHE3ns2xuJLkt0SIBYf+JsAjTN9i2M1rpZD9FFjhwLVJ6gJKjGemY/To59P
         +HRfRoguhSPdxik/FqKQS1l1UGFHhJYoE1TJzNgJAUuxofq5JyfejxN5uOJ4KI2zCCTi
         uThYBISUVDRey4qo/QaNiBB7t+mLiQ4npkX/ftEgkQTnpl6muAVBB7KPb9nYjhUmceM/
         2rEg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVCoIgFUz1HCuFClfOQs3XKKAI5yhCR6x9dG4yC75trf4k0f5aCwcJWRY4kA719K2QoOGpEjQ==@lfdr.de
X-Gm-Message-State: AOJu0YzTbYGCa0sk8qCNd9KlmWy2yMQ7k9lGcn04Lik+UgZw8bFcW2I0
	7TiqDH2PR2lurQ48g75Bo+T3sXtMhSsowC72D5iPgQiFG1BqqTR2D0vHOIR9EPo=
X-Google-Smtp-Source: AGHT+IFzNGRq5tzxjBqNL847CGSx/MmkfLEcUUscepV4JrHYXT//tX07WOQCAVGGa8ooxEjajvXBQw==
X-Received: by 2002:a17:903:1d1:b0:221:331:1d46 with SMTP id d9443c01a7336-225e0a36274mr62966825ad.2.1742037647241;
        Sat, 15 Mar 2025 04:20:47 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=ARLLPAI1sHLj3lxcHaEdyoMKDqc9WwbmfHLhs0KjVWx8oN+dow==
Received: by 2002:a17:902:7b8f:b0:21f:7c14:e7f5 with SMTP id
 d9443c01a7336-225c30bde47ls10093005ad.0.-pod-prod-01-us; Sat, 15 Mar 2025
 04:20:46 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWYf/WWm59pNo0kZMeQQXwxBur5woz39RkenUG3bKGmI4JDzB6GKyRQcEQ8Pjw2/23QFaRq0DH6izWZpQ==@lists.one-eyed-alien.net
X-Received: by 2002:a17:903:22c8:b0:21f:136a:a374 with SMTP id d9443c01a7336-225e0b098a2mr81869545ad.43.1742037645963;
        Sat, 15 Mar 2025 04:20:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1742037645; cv=none;
        d=google.com; s=arc-20240605;
        b=InUUojOugAzYP+iHiCOhNSFCwS8HicwqmqEs21LhduKMovXKBKfPdTkDrTC8Yctop5
         9v4OcK9Ph2bLkQ1MQnn43nuCnd99FZUcKFIPI3CiH0oXl2shB9GrrsDJeUdEGRoLjAeu
         pAiOaMdyk5pJeU6hdC8bddiDGOvRXNqfC8uM6Jd3H4zHQeOOQIGlk9OJGtCJApslAjri
         7pmt7nmZPCXe5/SszTGFaeok2V9EHnfjhY5QQ7lhH5cdPNsHozW5gz1nBkYw3yg7ia+/
         FQlUuWvnLOluhVOFQd4C7sMH3v5htJ7VohdhIyzPT4mO3aZsRGfW7BCsIVWCPGZt3ahH
         2EwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=message-id:mime-version:references:in-reply-to:subject:cc:to:from
         :date:dkim-signature;
        bh=x9277TGynIgojkAn+1mobESlF5L6xz5TTlIhfo0CtuQ=;
        fh=FQ+YlK/CdIPxtP9dRazTAd5n4/84Hq/bWKoirbmButY=;
        b=YPY3XJiVyEPkLrkANx4XREIfADxyNFMkOhAshE18AxgwJ2FbcbtuKKNK+dKYYc/V+u
         rJgxq2zzdF4xhvnC6tEYRc9oXhovb70/iugb3HNnF6d6lT9uFh1JdzCTc08nDtGBqdn6
         i1ROrAJavPqB5hN9l02pXZmy8jJkKZD6yMb5mtG0Mw10nKodXxofyioz73+sAuZviQ8D
         6ek/1vi7Js0fDr5F8wwCRSbu1RuvtohaDRAdHogZ6hisLM1jBNFAB6TU/fSeD/pnhyU7
         TlLwo2RUZfEwlw8p/HAjpFg87ER07GzzouX/JgL1JBCH0J63ae3TDHogkiuXM+1vbAKU
         xM1w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@163.com header.s=s110527 header.b=MUhRA+dW;
       spf=pass (google.com: domain of daixin_tkzc@163.com designates 117.135.210.5 as permitted sender) smtp.mailfrom=daixin_tkzc@163.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=163.com
Received: from m16.mail.163.com (m16.mail.163.com. [117.135.210.5])
        by mx.google.com with ESMTP id d9443c01a7336-225c6b4aa74si66452355ad.228.2025.03.15.04.20.44
        for <usb-storage@lists.one-eyed-alien.net>;
        Sat, 15 Mar 2025 04:20:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of daixin_tkzc@163.com designates 117.135.210.5 as permitted sender) client-ip=117.135.210.5;
Received: from daixin_tkzc$163.com ( [112.80.13.107] ) by
 ajax-webmail-wmsvr-40-121 (Coremail) ; Sat, 15 Mar 2025 19:20:37 +0800
 (CST)
X-Originating-IP: [112.80.13.107]
Date: Sat, 15 Mar 2025 19:20:37 +0800 (CST)
From: daixin_tkzc  <daixin_tkzc@163.com>
To: "Matthew Dharm" <mdharm-usb@one-eyed-alien.net>
Cc: "Alan Stern" <stern@rowland.harvard.edu>,
	"Greg KH" <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: Re:Re: Re: [usb-storage] Re:Re:[PATCH] usb: storage: Fix `us->iobuf`
 size for BOT transmission to prevent memory overflow
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <CAA6KcBD=CbW6S8vZ-n2v4BuJfC03vuNPzAG-WD5AN5_mMjgUfw@mail.gmail.com>
References: <20250311084111.322351-1-daixin_tkzc@163.com>
 <2b6c4aa7.b165.1958f6b7a3a.Coremail.daixin_tkzc@163.com>
 <814316b6-013b-4735-995d-b6c0c616c71b@rowland.harvard.edu>
 <1681f087.2727.195927b7ccb.Coremail.daixin_tkzc@163.com>
 <516c8f89-45f2-4d3f-b1e7-29aecfc8cd3c@rowland.harvard.edu>
 <6e125c5c.2541.195990d2daa.Coremail.daixin_tkzc@163.com>
 <CAA6KcBD=CbW6S8vZ-n2v4BuJfC03vuNPzAG-WD5AN5_mMjgUfw@mail.gmail.com>
X-CM-CTRLMSGS: 7lRXlHRyYWNlS2V5PXByZV82NTAzMGVhY2NjNTAwN2Y4ZGI2OTQxMmJiMzJhZ
 WQ1NA==
X-NTES-SC: AL_Qu2fAPyYuE4o4SKRZOkfmU4Thu4+Wse2svku1I9fPp94jArp5hguQUJSMlH0yeO0KiSImgmGehxv0c1dcotgYZ0g9du4lTKSqOpo49JH1C8V2w==
Content-Type: multipart/alternative; 
	boundary="----=_Part_48543_1245762057.1742037637296"
MIME-Version: 1.0
Message-ID: <265533ba.2e97.1959988d8b1.Coremail.daixin_tkzc@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: eSgvCgDXnciFYtVngjB_AA--.29221W
X-CM-SenderInfo: xgdl5xpqbwy6rf6rljoofrz/xtbB0gQR1WfVRvteIAAIsr
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-Original-Sender: daixin_tkzc@163.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@163.com header.s=s110527 header.b=MUhRA+dW;       spf=pass
 (google.com: domain of daixin_tkzc@163.com designates 117.135.210.5 as
 permitted sender) smtp.mailfrom=daixin_tkzc@163.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=163.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

------=_Part_48543_1245762057.1742037637296
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable




















At 2025-03-15 17:37:38, "Matthew Dharm" <mdharm-usb@one-eyed-alien.net> wro=
te:
>On Sat, Mar 15, 2025 at 2:05=E2=80=AFAM daixin_tkzc <daixin_tkzc@163.com> =
wrote:
>> Yes, dwc_otg should indeed ensure that DMA writes memory data no more th=
an 13 bytes (even if Rxfifo receives 512 bytes).
>> But in fact, the dwc_otg manual has different configuration requirements=
 for the XferSize register before DMA transfer:
>> For BOT's OUT transaction, the HCTSIZ register is filled with as many by=
tes as the software requests to send; for IN transactions, no matter how ma=
ny bytes the software requests to receive, the HCTSIZ register needs to be =
filled with 512 alignment, that is, the software requests 31 bytes in the C=
BW phase, and HCTSIZ is filled with 31; the software requests 13 bytes in t=
he CSW phase, and HCTSIZ is still filled with 512.
>
>"Alignment" is not the same thing as "size".  A buffer can be 32 bytes
>and aligned on a 4MByte boundary.  Hardware devices often impose
>alignment requirements as it simplifies the logic required to access
>the buffer.
>
>> Please allow us to explain the reason behind changing the US_IOBUF_SIZE =
macro.
>> 1) The macro comment says, =E2=80=9CBut Freecom needs a 64-byte buffer, =
so that's the
>> size we'll allocate=E2=80=9D. We thought that "Freecom" had a similar pr=
oblem, otherwise a 32-byte buffer size would be enough.

>
I'm sorry you may have misunderstood me.


HCTSIZ register only reflects the transfer size for the Host Channel (betwe=
en host and device). The dwc_otg manual explains it as follows=EF=BC=9A
Non-Scatter/Gather DMA Mode:
Transfer Size (XferSize)
For an OUT, this field is the number of data bytes the host sends=20
during the transfer.
For an IN, this field is the buffer size that the application has=20
Reserved for the transfer. The application is expected to program=20
this field as an integer multiple of the maximum packet size for IN=20
transactions (periodic and non-periodic).


We only see from the waveform on the axi bus: if babble error happened, it =
will write 512 bytes to memory(us->iobuf) in the CSW phase. In normal, it's=
 13, however the HCTSIZ register is always configured 512 in the CSW phase.=
 This may be a problem with the controller itself.




>Your reasoning is incorrect.  The "Freecom" device does NOT have a
>babble problem.  The Freecom device uses a vendor-specific protocol
>which requires a 64-byte buffer buffer for all of its command and
>status transfers.  us->iobuf is used by multiple protocols for command
>and status, including CB, CBI, BOT, Freecom, and others -- as such, it
>needs to be the largest size required by any of those protocols.
>

>Matt
Thanks for your explanation, we understand why this macro is set 64.





--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/265533ba.2e97.1959988d8b1.Coremail.daixin_tkzc%=
40163.com.

------=_Part_48543_1245762057.1742037637296
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div data-ntes=3D"ntes_mail_body_root" style=3D"line-height:1.7;color:#0000=
00;font-size:14px;font-family:Arial"><div id=3D"spnEditorContent"><p style=
=3D"margin: 0;"><br></p><p style=3D"margin: 0;"><br></p><p style=3D"margin:=
 0;"><br></p><p style=3D"margin: 0;"><br></p><p style=3D"margin: 0;"><br></=
p></div><div style=3D"position:relative;zoom:1"></div><div id=3D"divNetease=
MailCard"></div><p style=3D"margin: 0;"><br></p><pre><br>At 2025-03-15 17:3=
7:38, "Matthew Dharm" &lt;mdharm-usb@one-eyed-alien.net&gt; wrote:
&gt;On Sat, Mar 15, 2025 at 2:05=E2=80=AFAM daixin_tkzc &lt;daixin_tkzc@163=
.com&gt; wrote:
&gt;&gt; Yes, dwc_otg should indeed ensure that DMA writes memory data no m=
ore than 13 bytes (even if Rxfifo receives 512 bytes).
&gt;&gt; But in fact, the dwc_otg manual has different configuration requir=
ements for the XferSize register before DMA transfer:
&gt;&gt; For BOT's OUT transaction, the HCTSIZ register is filled with as m=
any bytes as the software requests to send; for IN transactions, no matter =
how many bytes the software requests to receive, the HCTSIZ register needs =
to be filled with 512 alignment, that is, the software requests 31 bytes in=
 the CBW phase, and HCTSIZ is filled with 31; the software requests 13 byte=
s in the CSW phase, and HCTSIZ is still filled with 512.
&gt;
&gt;"Alignment" is not the same thing as "size".  A buffer can be 32 bytes
&gt;and aligned on a 4MByte boundary.  Hardware devices often impose
&gt;alignment requirements as it simplifies the logic required to access
&gt;the buffer.
&gt;
&gt;&gt; Please allow us to explain the reason behind changing the US_IOBUF=
_SIZE macro.
&gt;&gt; 1) The macro comment says, =E2=80=9CBut Freecom needs a 64-byte bu=
ffer, so that's the
&gt;&gt; size we'll allocate=E2=80=9D. We thought that "Freecom" had a simi=
lar problem, otherwise a 32-byte buffer size would be enough.
<div>&gt;</div><div>I'm sorry you may have misunderstood me.</div><div><br>=
</div><div>HCTSIZ register only reflects the transfer size for the Host Cha=
nnel (between host and device). The dwc_otg manual explains it as follows=
=EF=BC=9A</div><div>Non-Scatter/Gather DMA Mode:
Transfer Size (XferSize)
For an OUT, this field is the number of data bytes the host sends=20
during the transfer.
For an IN, this field is the buffer size that the application has=20
Reserved for the transfer. The application is expected to program=20
this field as an integer multiple of the maximum packet size for IN=20
transactions (periodic and non-periodic).</div><div><br></div><div>We only =
see from the waveform on the axi bus: if babble error happened, it will wri=
te 512 bytes to memory(us-&gt;iobuf) in the CSW phase. In normal, it's 13, =
however the HCTSIZ register is always configured 512 in the CSW phase. This=
 may be a problem with the controller itself.</div><div><br></div><div><br>=
</div>&gt;Your reasoning is incorrect.  The "Freecom" device does NOT have =
a
&gt;babble problem.  The Freecom device uses a vendor-specific protocol
&gt;which requires a 64-byte buffer buffer for all of its command and
&gt;status transfers.  us-&gt;iobuf is used by multiple protocols for comma=
nd
&gt;and status, including CB, CBI, BOT, Freecom, and others -- as such, it
&gt;needs to be the largest size required by any of those protocols.
&gt;
<div>&gt;Matt</div><div>Thanks for your explanation, we understand why this=
 macro is set 64.</div><div><br></div><div><br></div><div><br></div></pre><=
/div><img style=3D"width:1px;height:1px" src=3D"https://count.mail.163.com/=
beacon/webmail.gif?type=3Dwebmail_mailtrace&amp;guid=3Dpre_65030eaccc5007f8=
db69412bb32aed54">

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;USB Mass Storage on Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:usb-storage+unsubscribe@lists.one-eyed-alien.net"=
>usb-storage+unsubscribe@lists.one-eyed-alien.net</a>.<br />
To view this discussion visit <a href=3D"https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/265533ba.2e97.1959988d8b1.Coremail.d=
aixin_tkzc%40163.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups=
.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/265533ba.2e97.19=
59988d8b1.Coremail.daixin_tkzc%40163.com</a>.<br />

------=_Part_48543_1245762057.1742037637296--

