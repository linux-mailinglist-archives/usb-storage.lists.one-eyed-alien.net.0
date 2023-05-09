Return-Path: <usb-storage+bncBCE4F7FN5QDRBCN25GRAMGQE4MVUW5A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yw1-x1145.google.com (mail-yw1-x1145.google.com [IPv6:2607:f8b0:4864:20::1145])
	by mail.lfdr.de (Postfix) with ESMTPS id D87096FC96B
	for <lists+usb-storage@lfdr.de>; Tue,  9 May 2023 16:47:38 +0200 (CEST)
Received: by mail-yw1-x1145.google.com with SMTP id 00721157ae682-559e55b8766sf97198607b3.1
        for <lists+usb-storage@lfdr.de>; Tue, 09 May 2023 07:47:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1683643657; x=1686235657;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-sender:mime-version
         :subject:references:in-reply-to:message-id:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tqz/CoC1Dgx9hGDKeAO5OR3c+URvAwt3YdIStoI7ZaY=;
        b=PxNck9optMFTJz92p6NLRlrLZsqx9eQ3IIj31xE05XYhrQT9MD8+BLrfqZ/TdGQqHg
         qlLhvUnNeKaUF6EKc8TytrPy3FSMUwLUP9x6j+EpmwO30QOmgnHiD0ZH3UoLzrsiLIlZ
         +2T8m1+IMwvD/0G1TkhdVhFJmYMunQBUAydMs=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683643657; x=1686235657;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-sender:mime-version
         :subject:references:in-reply-to:message-id:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tqz/CoC1Dgx9hGDKeAO5OR3c+URvAwt3YdIStoI7ZaY=;
        b=jamGYFlb8TRCtebw6dzeQkn8Tk+mn6oA8P75xHJgAmxxa8DjGaYYslstIlzA/WswNV
         4X+nr4OyUyUD9e4A2bIjKnSizUeItOCmy4HoIY+e28MDUKo4+b38izahMn9Gx1kCfMvM
         G43yKsPlgKSClg10v43z1Mhact8hLRWcKerSH1PnashME369QaDhlL+gufc+4zRfpUx7
         vYI1/0liDyGsMti6ohgfKzx7JbFlcGxD1a2MmHumMIo8JeE8oY0xgtRIhwE/vFbGL+e5
         PE/RO+NJk5LmSghZX5rOSspZG+661dRmBvBRfNc3dGN5POvZV5i2sfhpi8+iPhe3Pc0U
         tAAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683643657; x=1686235657;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-sender:mime-version
         :subject:references:in-reply-to:message-id:cc:to:from:date
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tqz/CoC1Dgx9hGDKeAO5OR3c+URvAwt3YdIStoI7ZaY=;
        b=SQH8rMs17OOttqZbp6w3OgEt/dWuuwhkQDfQa7EGV3SHFAAMqUDL9r+E1HKQYCRWFo
         ZckmnoluvjDpURp4LB8VqkMuPIpaDFrLGQTHMbJd9Xu2rM8+gTd5z396bUAj4kxYMAHB
         r0aclr9QnlnQB/VgVoR6n6h4IubeondfG4kvBgaXV9fx8sN0yRKN6Rn8yn9O0jbLWPeY
         fWE84cZGvwRsJvef/6tBpmG2h0tfOKIWUjAOTwqoXnOdtsMgWdL0YoDtPX4F7ky7s9y6
         byTUjKXiT4WuwjWUVMNImaMqlly92ECijIZurdRDma+sqF5ZCAkqSs13FwsGHfMby2pi
         hB5w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AC+VfDzfe8sehPBYblZxEhdjBLZOOfUErh4PrCfPI88N989H2mnW383V
	AG+wjLhtzmXA+Ys6Hq6i4bb+4A==
X-Google-Smtp-Source: ACHHUZ6nozAh0YBm5cokGnebSJG+XXdzF+xkwDa8jSPGRFJi4gNMR49Atey7FSZeSj1MoCA2pP1RuA==
X-Received: by 2002:a81:a9c7:0:b0:54f:b2a3:8441 with SMTP id g190-20020a81a9c7000000b0054fb2a38441mr8379781ywh.10.1683643657628;
        Tue, 09 May 2023 07:47:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:9a84:0:b0:b8f:4672:7434 with SMTP id s4-20020a259a84000000b00b8f46727434ls20366988ybo.10.-pod-prod-gmail;
 Tue, 09 May 2023 07:47:37 -0700 (PDT)
X-Received: by 2002:a25:500f:0:b0:b9e:930b:1b62 with SMTP id e15-20020a25500f000000b00b9e930b1b62mr9151854ybb.12.1683643657193;
        Tue, 09 May 2023 07:47:37 -0700 (PDT)
Received: by 2002:a05:690c:ec4:b0:55a:2feb:a386 with SMTP id 00721157ae682-55d8fdce11cms7b3;
        Tue, 9 May 2023 07:34:52 -0700 (PDT)
X-Received: by 2002:a81:ae65:0:b0:55d:f921:6bfa with SMTP id g37-20020a81ae65000000b0055df9216bfamr4578398ywk.5.1683642892163;
        Tue, 09 May 2023 07:34:52 -0700 (PDT)
Date: Tue, 9 May 2023 07:34:51 -0700 (PDT)
From: Eddy Manuel Sanchez <edmasa27@gmail.com>
To: USB Mass Storage on Linux <usb-storage@lists.one-eyed-alien.net>
Cc: "mar...@baders.eu" <markus@baders.eu>,
	"pe...@kubanek.net" <petr@kubanek.net>,
	"linux.ren...@gmail.com" <linux.rendszergazd@gmail.com>
Message-Id: <badc6524-f967-4555-a797-011c2ff0b05an@lists.one-eyed-alien.net>
In-Reply-To: <9201daec-c54e-43ab-9a3d-5041fe11d45d@lists.one-eyed-alien.net>
References: <1358700376.12399.1.camel@theta>
 <Pine.LNX.4.44L0.1301201514320.1945-100000@netrider.rowland.org>
 <ed201178-eace-43d2-8daa-39a8d6bfd95f@lists.one-eyed-alien.net>
 <9201daec-c54e-43ab-9a3d-5041fe11d45d@lists.one-eyed-alien.net>
Subject: Re: [usb-storage] Picture frame 1de1:1101 does not work in mass
 storage mode
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4050_1929052592.1683642891920"
X-Original-Sender: edmasa27@gmail.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

------=_Part_4050_1929052592.1683642891920
Content-Type: multipart/alternative; 
	boundary="----=_Part_4051_443368511.1683642891920"

------=_Part_4051_443368511.1683642891920
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Just perfect, it worked for me too, I had this disk on my PC and the board=
=20
damaged for som reason, and my disk was with all the information=20
inaccessible, thank you.

El martes, 22 de diciembre de 2015 a las 17:53:06 UTC-4, mar...@baders.eu=
=20
escribi=C3=B3:

> Check the file  /lib/udev/rules.d/40-usb_modeswitch.rules  and remove the=
=20
> entry for 1de1:1101
> It worked on my Ubuntu 14.04 with a Hama 10SLP Digital Photo Frame
>
> Geetings
> Markus
>
>
> Am Dienstag, 15. September 2015 16:16:28 UTC+2 schrieb=20
> linux.ren...@gmail.com:
>
>> Hello ,
>>
>> Any news on this issue? Im having the same problem.
>>
>> Thanks,
>> Daniel
>>
>> 2013. janu=C3=A1r 20., vas=C3=A1rnap 21:17:58 UTC+1 id=C5=91pontban Alan=
 a k=C3=B6vetkez=C5=91t=20
>> =C3=ADrta:
>>>
>>> On Sun, 20 Jan 2013, Petr [ISO-8859-1] Kub=EF=BF=BDnek wrote:=20
>>>
>>> > Hi Alan,=20
>>> >=20
>>> > I found rule in udev, which called usb_modeswitch. This was apparentl=
y=20
>>> > mistake. Commenting it out makes the device working as expected.=20
>>> >=20
>>> > Later, I will try to contact udev maintainer, to either explain or=20
>>> > remove this rule.=20
>>>
>>> First you should contact the usb_modeswitch maintainer: Josua Dietze=20
>>> <digid...@draisberghof.de>.=20
>>>
>>> Alan Stern=20
>>>
>>>

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/badc6524-f967-4555-a797-011c2ff0b05a=
n%40lists.one-eyed-alien.net.

------=_Part_4051_443368511.1683642891920
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Just perfect, it worked for me too, I had this disk on my PC and the board =
damaged for som reason, and my disk was with all the information inaccessib=
le, thank you.<br /><br /><div class=3D"gmail_quote"><div dir=3D"auto" clas=
s=3D"gmail_attr">El martes, 22 de diciembre de 2015 a las 17:53:06 UTC-4, m=
ar...@baders.eu escribi=C3=B3:<br/></div><blockquote class=3D"gmail_quote" =
style=3D"margin: 0 0 0 0.8ex; border-left: 1px solid rgb(204, 204, 204); pa=
dding-left: 1ex;"><div dir=3D"ltr">Check the file=C2=A0 /lib/udev/rules.d/4=
0-usb_modeswitch.rules=C2=A0 and remove the entry for 1de1:1101<br>It worke=
d on my Ubuntu 14.04 with a Hama 10SLP Digital Photo Frame<br><br>Geetings<=
br>Markus</div><div dir=3D"ltr"><br><br>Am Dienstag, 15. September 2015 16:=
16:28 UTC+2 schrieb <a href data-email-masked rel=3D"nofollow">linux.ren...=
@gmail.com</a>:</div><div dir=3D"ltr"><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0;margin-left:0.8ex;border-left:1px #ccc solid;padding-left:1e=
x"><div dir=3D"ltr">Hello ,<br><br>Any news on this issue? Im having the sa=
me problem.<br><br>Thanks,<br>Daniel<br><br>2013. janu=C3=A1r 20., vas=C3=
=A1rnap 21:17:58 UTC+1 id=C5=91pontban Alan a k=C3=B6vetkez=C5=91t =C3=ADrt=
a:<blockquote class=3D"gmail_quote" style=3D"margin:0;margin-left:0.8ex;bor=
der-left:1px #ccc solid;padding-left:1ex">On Sun, 20 Jan 2013, Petr [ISO-88=
59-1] Kub=EF=BF=BDnek wrote:
<br>
<br>&gt; Hi Alan,
<br>&gt;=20
<br>&gt; I found rule in udev, which called usb_modeswitch. This was appare=
ntly
<br>&gt; mistake. Commenting it out makes the device working as expected.
<br>&gt;=20
<br>&gt; Later, I will try to contact udev maintainer, to either explain or
<br>&gt; remove this rule.
<br>
<br>First you should contact the usb_modeswitch maintainer: Josua Dietze=20
<br>&lt;<a rel=3D"nofollow">digid...@draisberghof.de</a>&gt;.
<br>
<br>Alan Stern
<br>
<br></blockquote></div></blockquote></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;USB Mass Storage on Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:usb-storage+unsubscribe@lists.one-eyed-alien.net"=
>usb-storage+unsubscribe@lists.one-eyed-alien.net</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/a/lists.one-eyed-alien.net/d/msgid/usb-storage/badc6524-f967-4555-a797-0=
11c2ff0b05an%40lists.one-eyed-alien.net?utm_medium=3Demail&utm_source=3Dfoo=
ter">https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-stora=
ge/badc6524-f967-4555-a797-011c2ff0b05an%40lists.one-eyed-alien.net</a>.<br=
 />

------=_Part_4051_443368511.1683642891920--

------=_Part_4050_1929052592.1683642891920--
