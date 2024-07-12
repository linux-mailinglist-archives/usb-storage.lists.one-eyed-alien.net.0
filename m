Return-Path: <usb-storage+bncBAABB7VDYK2AMGQEJ4BLOWA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x47.google.com (mail-oa1-x47.google.com [IPv6:2001:4860:4864:20::47])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E3592F3FA
	for <lists+usb-storage@lfdr.de>; Fri, 12 Jul 2024 04:16:32 +0200 (CEST)
Received: by mail-oa1-x47.google.com with SMTP id 586e51a60fabf-25e2a0f2643sf1670418fac.1
        for <lists+usb-storage@lfdr.de>; Thu, 11 Jul 2024 19:16:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1720750591; cv=pass;
        d=google.com; s=arc-20160816;
        b=MTf0ZEgd8nPlOZd5P9xUwA/oUisSFaVRUptfYTDdUgGdWpLyKljalcYyepBb/5LSzo
         r0DIGe7R4DHZvOB5OgXoHjVqERQpiZL+lAeUciDe5chKMiZmq95i4mepBwQQiZES+u2h
         CxFCQjMniMIFFfe/B4/jM0q/1ZWTFC6jMKSUel15+qFNsYjmsLYofXuevcORkZqbY7cX
         iSYe3W44JQIuBUvju91Hp47JeeL3aR/MkJUd8DuEBd4AzMeH7v9eTFt3HlTd+M+ThFxX
         tIW3X5ZoxL5Ix8XGssnfcIvWWVKqgNnFlzi8LVukLNovIvw4HiLMX9WYESkEnB9rA5az
         Tbow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:mime-version:subject:to
         :from:date:sender:dkim-signature;
        bh=ME1EBGC74aEUXDhPzjUgsFXMiNrIS0Ym6KyFYDKdleU=;
        fh=4RiELeg62Z9UdRgwhBOOVeDxKz+RrLnDcEetaZm3AHQ=;
        b=hhLLwZwwU2Ua/xk6IG/wV7QVSEg7mbTFJG7a3MShW0dXljR0bS24nqTn9j2jL8ycbz
         oMiAjG837JsTeS7AWfSmfDsKNaqA4dvsJ88SFqKGwP2HFcpnShVxtFtn9zgiOtSuqYpK
         RkXWafHSRg0Z3164V7eK/ucp0MbTIkjAIYj4Ak7EFk9QFOErfBqPW11j+qTzSHntwqDM
         5JJ6cR7KFcWHOOqWAmJ/pvj4/dLfuMU6dCQ0Q+VH3eehlFmKOu5FO+E+qJDvJBOcvNw8
         0MLPcqXeyhaYHAlBf6TeWtIEW0HUcwecHsc8z5Q24035Nn/pswoIQHIMPfR558lj16Fu
         ElNQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of longchongyu22@mails.ucas.edu.cn designates 159.226.251.37 as permitted sender) smtp.mailfrom=longchongyu22@mails.ucas.edu.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1720750591; x=1721355391; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:mime-version:subject:to:from:date
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=ME1EBGC74aEUXDhPzjUgsFXMiNrIS0Ym6KyFYDKdleU=;
        b=ZwTLJMCU2PvXXTVinIfhaNjOKsgniFRQVqWM6yT/m5q5bgIg+NFLOGTeikvuwcpQ2s
         mtQ0ltC6v2fB/L/cDDCguAz9tAJ+x9KTtMcvywn0hAojzD2YyAohpYMAF6tfKz6yBbQe
         QC4rPkRyxRBVz4Pwv5aT1Q0RDE455Q2zDDVVU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720750591; x=1721355391;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:mime-version:subject:to:from:date
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ME1EBGC74aEUXDhPzjUgsFXMiNrIS0Ym6KyFYDKdleU=;
        b=mpPlhxTo+tJ69HzHt/w/Jugz00L7hJ+7TlLOPFVjp9wF8gW2IsIA+3Fh1/5qFK3gVa
         aAA9yTHgt7dqE68fL2gcsQ3hgWc1cLrwNJrLBm4sscVda1JArNq1Gu4h1s8Zfp0lhc7m
         BPH9misZLJa5Q+RuozQAqARyagD+wZF+V6FqdYUG50oHe+RQIYRfpL7sPxmUhVzA+xfm
         F69efp4eY4JZl5n4SOE5E99R5UKMc3ApRQ7+SjhAWWksDul4k7Kgkrnx5WKc/p18Pd6x
         ZSQhDIYm6oDVtvqFTLr4rHje1gQfJbhtsSc6Nyw7lw/VD3ElNMyrtT1TODHHG69HOI3Q
         R5JQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXoLUOPNJIAjY86S7V/RgwQuXS3Q69KwZFXnj4gS630RRbdaLN/dNptLz0E81WzGEZiYNtOM83SIoIG9NXeynmkCm03vlih0bKc
X-Gm-Message-State: AOJu0YzirWk8vbPyUqJhwtY1R9rIsukfMaGAisBzTqTawdZyMpknZspu
	pDzmUpd9PdPpoYyApyF1u7HC4bmnX6AlU1F/gzvO5artY1cm+gev+OoeB6aQR1A=
X-Google-Smtp-Source: AGHT+IG0yBt3YdZPDYLnOOW8ih/BR+dfN3tF52h74pKs1DKgk7GUcrsgojd8inEC0bZ01QJjwe0AqA==
X-Received: by 2002:a05:6871:611:b0:25e:1610:9705 with SMTP id 586e51a60fabf-25eae784630mr8989311fac.2.1720750590971;
        Thu, 11 Jul 2024 19:16:30 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6871:7245:b0:25d:f93b:9be0 with SMTP id
 586e51a60fabf-2603ad1a4ecls68052fac.1.-pod-prod-05-us; Thu, 11 Jul 2024
 19:16:30 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXshGH3KWV8vGDMx+7yAby+7hDrIFRw4TGy+d5C8BGNMaXCGQxpNu3N/8YfX47Vlz5G1X4NueR6gvr7vtm7ZRkg/+SGofTtSy1Dg4KFCXODoAPQBVM=
X-Received: by 2002:a05:6870:fbab:b0:254:80cd:d2c7 with SMTP id 586e51a60fabf-25eae88b82fmr622423fac.5.1720750590154;
        Thu, 11 Jul 2024 19:16:30 -0700 (PDT)
Received: by 2002:a05:6808:e92:b0:3da:a27f:25ca with SMTP id 5614622812f47-3daa27f291cmsb6e;
        Thu, 11 Jul 2024 17:29:16 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXFcjIy6Jgeact7YAkADOIym8arxykbodk+G1T5CpPuRwo74jfXmARuebofIFSxrRc/Bof7ROmoAKihFxu1yLYXUHzTybZOfzRnrrgnCcru6x+7nR4=
X-Received: by 2002:a05:6808:130b:b0:3d9:2697:d398 with SMTP id 5614622812f47-3d93bdd179dmr12456212b6e.9.1720744156230;
        Thu, 11 Jul 2024 17:29:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1720744156; cv=none;
        d=google.com; s=arc-20160816;
        b=gvG/I0d8Cz70WbaKCbnYzOC06t+huPzpidDM2G/YrwA7btcinokknOoaGtjnkrPk9Y
         vQJJlKp7oPdNnS4yRslYbzAvcsSTFfyYDkFx8SEQoFE23Ovuw+mkn6ih8Lhpcv+D0Eu5
         Rso+nlMeZFL9fWOnesfVUE+J2AvsqkWUTn6CwKOJdpN0BXH+7kAtQhOkfvE7/1cldbYs
         /wNgeIVrTW6nPvlQo+nVcRAUtCuiqe9nmCHyzZt+m0lmqW1uVAIYbX10gwtD18/C0Eqs
         cc7rVC7J9DVmj49njzCBgZ7KsbhHhsVsPzH9PsR6ql2NwiPps3/m5o3BjQ0PCI7Y6ule
         FKFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:mime-version:subject:to:from:date;
        bh=fs15D89eg83D7aB0zKIAAh6n1ruHvNfi7iFfDiDar5w=;
        fh=w1giylt0bLyh1rWo1agSJaYosTIGrrEPTdBXjdMp/ug=;
        b=j3/IWt5a/T6shhCXDGxSuiscUC8tbmObGb7J4Ca4eXDvjxbmXpZxVxkRoM483BU89+
         T9K6UeErYRaRJxCUTeBZi+VTJQn4id31ttx1ScW7697CXk2CLE9OHETf8SpL3tVOdRRc
         VJyGO59cnMgRiiR+pnFhS8QLvYJVF0xiqEsgqgvcMdPgJZhTXlyqOhYRh4xRKNNY+oCi
         8gDPCPf/85AwZ90f9JpWakpajQRxiHW9x5Ub8LbO59DWMhewCZPitrK6qFJzrvJwCiEy
         KxNUbYlSHjIBPs2SOXYzuY0h613klA4BIH5+lqbudnKW8NKanda0xeGAdJKY4AHSEbDj
         imBA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of longchongyu22@mails.ucas.edu.cn designates 159.226.251.37 as permitted sender) smtp.mailfrom=longchongyu22@mails.ucas.edu.cn
Received: from cstnet.cn (smtp37.cstnet.cn. [159.226.251.37])
        by mx.google.com with ESMTPS id 5614622812f47-3d93f1a071esi2585474b6e.231.2024.07.11.17.29.13
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jul 2024 17:29:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of longchongyu22@mails.ucas.edu.cn designates 159.226.251.37 as permitted sender) client-ip=159.226.251.37;
Received: from longchongyu22$mails.ucas.edu.cn ( [121.195.114.26] ) by
 ajax-webmail-APP-12 (Coremail) ; Fri, 12 Jul 2024 08:28:39 +0800
 (GMT+08:00)
X-Originating-IP: [121.195.114.26]
Date: Fri, 12 Jul 2024 08:28:39 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: =?UTF-8?B?6b6Z6YeN5L2Z?= <longchongyu22@mails.ucas.edu.cn>
To: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Consultation about max_sectors in Linux SCSI Drivers
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.15 build 20240418(6ec7583a)
 Copyright (c) 2002-2024 www.mailtech.cn cnic.cn
Content-Type: multipart/alternative; 
	boundary="----=_Part_2025654_1227497804.1720744119493"
MIME-Version: 1.0
Message-ID: <5546a67e.90bd9.190a4578cc6.Coremail.longchongyu22@mails.ucas.edu.cn>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: tgCowAD32Sm4eJBm_fkVAA--.30000W
X-CM-SenderInfo: 5orqwu5krqw5rxssqzpdlo2hpxfd2hldfou0/1tbiDAUPCWaPGlVi
	4gAEst
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VWxJw
	CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
	daVFxhVjvjDU=
X-Original-Sender: longchongyu22@mails.ucas.edu.cn
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of longchongyu22@mails.ucas.edu.cn designates 159.226.251.37 as
 permitted sender) smtp.mailfrom=longchongyu22@mails.ucas.edu.cn
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

------=_Part_2025654_1227497804.1720744119493
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello!




I'm sorry to bother you. Here is the problem: My usb storage device has a 6=
4kB (limited by hardware) buffer used to cache reads/writes which means it =
can only cache up to 128 blocks(512B) of memory.  The SCSI Write-10 and Rea=
d-10 command has a total-blocks field that can be up to 240 blocks (120kB) =
for USB2.0.  When originally testing the product on Windows 11 it never wri=
tes more than 128 blocks at a time but when tested on Linux it sometimes wr=
ites more than 128 blocks, which causes the usb storage device to crash.


Is there a way to tell the host OS not to request more than 128 blocks?
I have implemented block limit VPD page, and it works well on Windows 10/11=
.  I even set the block limit to be 64 blocks, it's OK too. Because before =
the data transfer, the windows host issue an SCSI inquiry order with the VP=
D PAGE CODE is 0xB0, so the device could transmit the block limits informat=
ion to the host. And then the windows host could adjust the amount of data =
transferred.

However, on Linux or MacOS, the host does not appear to be running the bloc=
k limits command.  So the host don't know what is the block limits. So the =
write/read blocks number beyond the buffer size.




Could you please tell me what can I do to dissolve the problem?




Thanks in advance.




Best wishes.

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/5546a67e.90bd9.190a4578cc6.Coremail.=
longchongyu22%40mails.ucas.edu.cn.

------=_Part_2025654_1227497804.1720744119493
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<p style=3D"font-family:=E5=AE=8B=E4=BD=93, arial, Verdana, sans-serif;font=
-size:14px;text-wrap:wrap;">
	Hello!
</p>
<p style=3D"font-family:=E5=AE=8B=E4=BD=93, arial, Verdana, sans-serif;font=
-size:14px;text-wrap:wrap;">
	<br>
</p>
<p style=3D"font-family:=E5=AE=8B=E4=BD=93, arial, Verdana, sans-serif;font=
-size:14px;text-wrap:wrap;">
	I'm sorry to bother you. Here is the problem: My usb storage device has a =
64kB (limited by hardware) buffer used to cache reads/writes which means it=
 can only cache up to 128 blocks(512B) of memory.&nbsp; The SCSI Write-10 a=
nd Read-10&nbsp;command has a total-blocks field that can be up to 240 bloc=
ks (120kB) for USB2.0.&nbsp; When originally testing the product on Windows=
 11 it never writes more than 128 blocks at a time but when tested on Linux=
 it sometimes writes more than 128 blocks, which causes the usb storage dev=
ice&nbsp;to crash.
</p>
<p style=3D"font-family:=E5=AE=8B=E4=BD=93, arial, Verdana, sans-serif;font=
-size:14px;text-wrap:wrap;">
	<br>
Is there a way to tell the host OS not to request more than 128 blocks?<br>
I have implemented block limit VPD page, and it works well on Windows 10/11=
.&nbsp; I even set the block limit to be 64 blocks, it's OK too. Because be=
fore the data transfer, the windows host issue an SCSI inquiry order with t=
he VPD PAGE CODE is 0xB0, so the device could transmit the block limits inf=
ormation to the host. And then the windows host could adjust the amount of =
data transferred.
</p>
<p style=3D"font-family:=E5=AE=8B=E4=BD=93, arial, Verdana, sans-serif;font=
-size:14px;text-wrap:wrap;">
	However, on Linux or MacOS, the host does not appear to be running the blo=
ck limits command.&nbsp; So the host don't know what is the block limits. S=
o the write/read blocks number beyond the buffer size.
</p>
<p style=3D"font-family:=E5=AE=8B=E4=BD=93, arial, Verdana, sans-serif;font=
-size:14px;text-wrap:wrap;">
	<br>
</p>
<p style=3D"font-family:=E5=AE=8B=E4=BD=93, arial, Verdana, sans-serif;font=
-size:14px;text-wrap:wrap;">
	Could you please tell me what can I do to dissolve the problem?
</p>
<p style=3D"font-family:=E5=AE=8B=E4=BD=93, arial, Verdana, sans-serif;font=
-size:14px;text-wrap:wrap;">
	<br>
</p>
<p style=3D"font-family:=E5=AE=8B=E4=BD=93, arial, Verdana, sans-serif;font=
-size:14px;text-wrap:wrap;">
	Thanks in advance.
</p>
<p style=3D"font-family:=E5=AE=8B=E4=BD=93, arial, Verdana, sans-serif;font=
-size:14px;text-wrap:wrap;">
	<br>
</p>
<p style=3D"font-family:=E5=AE=8B=E4=BD=93, arial, Verdana, sans-serif;font=
-size:14px;text-wrap:wrap;">
	Best wishes.
</p>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;USB Mass Storage on Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:usb-storage+unsubscribe@lists.one-eyed-alien.net"=
>usb-storage+unsubscribe@lists.one-eyed-alien.net</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/a/lists.one-eyed-alien.net/d/msgid/usb-storage/5546a67e.90bd9.190a4578cc=
6.Coremail.longchongyu22%40mails.ucas.edu.cn?utm_medium=3Demail&utm_source=
=3Dfooter">https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb=
-storage/5546a67e.90bd9.190a4578cc6.Coremail.longchongyu22%40mails.ucas.edu=
.cn</a>.<br />

------=_Part_2025654_1227497804.1720744119493--

