Return-Path: <usb-storage+bncBCWN5IOWUIIRBY5IZ27AMGQELIP5Q3Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x645.google.com (mail-pl1-x645.google.com [IPv6:2607:f8b0:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id C87B7A6077F
	for <lists+usb-storage@lfdr.de>; Fri, 14 Mar 2025 03:28:53 +0100 (CET)
Received: by mail-pl1-x645.google.com with SMTP id d9443c01a7336-225501825a6sf3645225ad.1
        for <lists+usb-storage@lfdr.de>; Thu, 13 Mar 2025 19:28:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1741919332; cv=pass;
        d=google.com; s=arc-20240605;
        b=EDnKM1WqaigVABD4xjkcPpH7adv2BdBxgLYdHnGQXdekZdPPMkCydZ55tUn/BSOWnl
         a8CGTBaXHAYocX1KtWNI63iAEJ94ddXfSfSKKuo+W5bzcp3AOlzPVdaq0yX/YeGtAl7c
         qvHDcAvBSnvJSQrjyxtNW6gBdvR+Wx7qC9fOazWQoMrTIweCyO3GV84o55Fwc+O1dego
         A59kxVyT1CebubTcG7qvUmBdZoNKRB9mf312DlQ1cHIcGhbQHBG1grYgOsp65uqbUGC4
         6KbMAea7NdYmrnmll4OwV4K1Q8MLcOxmvpeBDJzORkYCT2YubB15fi44Lxwjtic0yb7c
         1IPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:mime-version:references
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=j4L9xHjeYEEGYhV2c+qHXHj+ltlsCwG+LevDYSeIjjI=;
        fh=F1dJYV1MATXRAe4TF+csZbZQI2T4cQRXcGmUl+IZheE=;
        b=CZqAwVO7qeo9/1/HMXMTsx8CFjnGdweWu72WyvKLJyW1P6bja1IAlE0meT11vZEXtX
         v0nrEprsjv4zqA7/xijUA3RWn43R/reMEfnBhcmm2gAXdXEfJ8NdK67KHYIlaikOuvks
         RHVX8fL4hhtqkDeiIh+4fRmB6T9uhL77CpvojDEM3uLkSQooIbbAHDAe5juDegL+3spf
         lbOtBpXqpIOxKAaqXOvfXphg1x7/+RvxxqgsDPDr3N1SbHp9Ti31J/rAjHPBCMQXUcTa
         mpgtwxJJnRqbdOfaRRT1P0sxCTN+hcG4Qpp/bOPsxvYEgF1TUZELKg5fRV2ubYzYlOMj
         qUwA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@163.com header.s=s110527 header.b=imDT4Chi;
       spf=pass (google.com: domain of daixin_tkzc@163.com designates 220.197.31.2 as permitted sender) smtp.mailfrom=daixin_tkzc@163.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1741919332; x=1742524132; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:mime-version:references:in-reply-to
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j4L9xHjeYEEGYhV2c+qHXHj+ltlsCwG+LevDYSeIjjI=;
        b=jfF/DMf2bnExT219qjX27RWPn6p642O6G/gmpT1OIKp8iaTAZt8sd0lHC5NXNWYEce
         ftqMWWgiiEx0GNEJMax+40WIc4uTfRRMNQ5TLr0ITorOjKvFlJ4Ob6jGfyXMutZeJ02m
         Ytr4OmQ8qHpyqc0Xt4H9uZGidjVxvY8gx19Bc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741919332; x=1742524132;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:message-id
         :mime-version:references:in-reply-to:subject:cc:to:from:date
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j4L9xHjeYEEGYhV2c+qHXHj+ltlsCwG+LevDYSeIjjI=;
        b=cQnW89pyuSLzFUlOd7JNoHF7jq/63vIAkHBwmBEocp/0qSlY8tgJE/zF2htN6uG4Sv
         cegW1pF80Q7O2EgpiLCYy5l4N3yoLq6CJ3lCfTe3tm5M4cLBbVZ/xJuEgFMxgPPT0TFL
         3ZFxIZJR1m46iopFLG6F996rcIHnld5mxVLkLAz+IGRIDkgv6NZ30w42abxMBTvLwpBt
         DbxR+eYj2Vz/n5i33xb8fZzGDgi7LpepA+xlQ0meNl7ONAxa18Y8EYbEYrtFVHyS/zE9
         6thBStO6AZmg2/ZKBK6Es9ao7+8GsbvF+pWB4GHvXtm49gbBNleXS9ic0jsY6XYl7Fdq
         4cGQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUL8NMDZVsGC330sq7+HwNGYGlngpw9kCkwbDLNx9XreagA8ezzWas3Sett/msKd3tBpBe8LQ==@lfdr.de
X-Gm-Message-State: AOJu0Yz/oSWd5I/rIxjNcxejVKV1Bn6+CMdiilE/XzWwl3MspaKHsft2
	1VyJgzzIjN3ZNPgV32y3mzZgf+XAYJtE/lNNDUbTEMtcMrYgelfhkaVYuaLRsSM=
X-Google-Smtp-Source: AGHT+IH5WU1xntGLJ4Zhw3W4FkLNW5pl2Ne6zrvNBUxDMAF1Au9F0yyS7vO5kBLF0SN+9Ck6DV4w0Q==
X-Received: by 2002:a17:902:e745:b0:224:8bf:6d83 with SMTP id d9443c01a7336-225e0ab5221mr4254465ad.8.1741919331874;
        Thu, 13 Mar 2025 19:28:51 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=ARLLPALGhbC+mF0cYWSaLw0GCP2OpFz+g0wuE5TMVJ93qQG10w==
Received: by 2002:a17:90a:6d02:b0:2ff:4b06:9a15 with SMTP id
 98e67ed59e1d1-3015330359als85535a91.1.-pod-prod-05-us; Thu, 13 Mar 2025
 19:28:50 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWbdQLUkr0Y07lc39vDQSaUmSWrbQcvH2jPVSrM+aQXFqo8R6t7yzy3h8x6ufh83fuNcMUwS4SInGoOmw==@lists.one-eyed-alien.net
X-Received: by 2002:a17:902:e808:b0:224:2657:2c04 with SMTP id d9443c01a7336-225e0a285f2mr9983665ad.4.1741919330469;
        Thu, 13 Mar 2025 19:28:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1741919330; cv=none;
        d=google.com; s=arc-20240605;
        b=lUY8aT4RXYVHVDp0UBk+19B7e+HKJ5pOfdCyJZeDBHlbKEuKyVPvolZ0aYu2I594Lg
         WG1ead5i8AuufCRYsdGgRBrvDwLgNVQSEm85+Q0vwTa9DjAA1ZQmYX7hM7FhGxzYJCcG
         z0UxxGT/tqrV/UDKmdLUjvKZ/Nu9KwfLQQsMIy+eY5DCaja/q9kmY9Wkrzp2mUMy7Fmv
         qfji02o9cWkQaMTQ5tu0VBjpdy+jpM783RyQh7KbZsTfsZhU3pbO4tZekvhJDTBQwOFp
         ss//ODBh+Hl4F5cGpgTzsiVSiAfTHd178HEaBkHl1XGYYwjHzF37HbaCRsTj9ZLlMZaB
         a0nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=message-id:mime-version:references:in-reply-to:subject:cc:to:from
         :date:dkim-signature;
        bh=ttYIR07/b0IN4FWP9Kuvt7ogc4YLjvjpNyKCgS+1CDU=;
        fh=lQNfSRDnw9GzlGborSlzbRL1I2L8N/HAopc7rK4o/70=;
        b=cJbMNbmOT27UZ5FH/y1A+8SziYzarDj3866q8IuhZisI291WSXjpi8NMXP2fGn+ih9
         3wRow5V35k/iSXHYIqnt4orX8qCBqp7SrYyfi9YoPiVlb8Ly8rEagb2JxeP462QAYovu
         sH+ceoEfkdOlqMaFVKASAMKAfhCut6VkmJcgyN3CIdb/6Kwr8MhwOeL0YDK/kJKqYfqx
         Sx91xmzFL5Ry6nahu4HCyH+1OHv/rujPHhdyNQTBLdEH8ZYfHL0JpWdRdmuAVq+cMRjY
         dw83sttAGXdFtJ1idryc6msLystBc7LmQjchHCJj7aRYl3mLNNq4Dp5U6bKVDi+6DAHk
         IKiQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@163.com header.s=s110527 header.b=imDT4Chi;
       spf=pass (google.com: domain of daixin_tkzc@163.com designates 220.197.31.2 as permitted sender) smtp.mailfrom=daixin_tkzc@163.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=163.com
Received: from m16.mail.163.com (m16.mail.163.com. [220.197.31.2])
        by mx.google.com with ESMTP id d9443c01a7336-225c6b89889si35856345ad.441.2025.03.13.19.28.48
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 13 Mar 2025 19:28:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of daixin_tkzc@163.com designates 220.197.31.2 as permitted sender) client-ip=220.197.31.2;
Received: from daixin_tkzc$163.com ( [122.97.221.93] ) by
 ajax-webmail-wmsvr-40-132 (Coremail) ; Fri, 14 Mar 2025 10:28:41 +0800
 (CST)
X-Originating-IP: [122.97.221.93]
Date: Fri, 14 Mar 2025 10:28:41 +0800 (CST)
From: daixin_tkzc  <daixin_tkzc@163.com>
To: "Alan Stern" <stern@rowland.harvard.edu>
Cc: "Greg KH" <gregkh@linuxfoundation.org>,
	"matthew dharm" <mdharm-usb@one-eyed-alien.net>,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] Re:Re:[PATCH] usb: storage: Fix `us->iobuf` size for
 BOT transmission to prevent memory overflow
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <814316b6-013b-4735-995d-b6c0c616c71b@rowland.harvard.edu>
References: <20250311084111.322351-1-daixin_tkzc@163.com>
 <2b6c4aa7.b165.1958f6b7a3a.Coremail.daixin_tkzc@163.com>
 <814316b6-013b-4735-995d-b6c0c616c71b@rowland.harvard.edu>
X-CM-CTRLMSGS: ck1ZgXRyYWNlS2V5PXByZV8zZmM1M2EzZGNhYTUwZjAxYTdmM2NhM2ZkM2NjZ
 jk0Yw==
X-NTES-SC: AL_Qu2fA/Watksp5yKQZ+kfmU4Thu4+Wse2svku1I9fPp94jAPo0SkNd0JSDGf/6+O0OimUmgmGVjtO4OB9Ro1mZ4MQzj8tmIfu3zQM0K/BBARZBQ==
Content-Type: multipart/alternative; 
	boundary="----=_Part_38362_1064403213.1741919321291"
MIME-Version: 1.0
Message-ID: <1681f087.2727.195927b7ccb.Coremail.daixin_tkzc@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: hCgvCgD3f6BZlNNnjoOBAA--.28725W
X-CM-SenderInfo: xgdl5xpqbwy6rf6rljoofrz/1tbiqB0P1WfS6bN2YQAEsT
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-Original-Sender: daixin_tkzc@163.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@163.com header.s=s110527 header.b=imDT4Chi;       spf=pass
 (google.com: domain of daixin_tkzc@163.com designates 220.197.31.2 as
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

------=_Part_38362_1064403213.1741919321291
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'm sorry for not making my point clear.=20

DWC_otg driver can handle packet babble in the data phase properly. It prov=
ides interrupt function, dwc2_hc_babble_intr, It mainly does two things:

1) Delete the URB request from the endpoint linked list maintained by the U=
SB host controller, mark the URB transfer result as OVERFLOW error, and del=
ete the remaining URB requests in the data phase of the BOT transfer.

2) Halt the currently used channel and indicate that the reason for the cha=
nnel halt is Babble Error.

When the urb complete (babble error occurs), the sg_complete function of ur=
b(s) will notify the mass storage driver that the data phase of the BOT tra=
nsfer is over. The rest is done by the mass storage driver, such us:

1) Get CSW for device status, interpret CSW, return USB_STOR_TRANSPORT_ERRO=
R.

2) Handle Errors(here is USB_STOR_TRANSPORT_ERROR).

3) Initiate port reset.

4) Notify the SCSI layer implements a retransmission mechanism.

How us->iobuf overflow could occur?

For 1), the USB device does not know that a Babble Error has occurred at th=
is time (DWC_otg knows what happened), It actually continuously returns 512=
 bytes data through DMA write to CSW address (As can be seen in the wavefor=
m in the appendix document before). The DWC_otg controller driver cannot co=
ntrol how much data the device returns(13 or 512 bytes). However, the USB s=
torage driver pre-allocates a default buffer size of 64 bytes for CBW/CSW.

For 3), the device does not realize that a babble error has occurred until =
the port reset is successfully completed (by interface usb_stor_port_reset)=
. Then device will enter the enumeration process. It looks like things are =
heading in the right direction.

For 4), as for the urb that has a babble error, SCSI will execute a retrans=
mission mechanism.

thanks,

Dai xin














At 2025-03-13 22:36:32, "Alan Stern" <stern@rowland.harvard.edu> wrote:
>On Thu, Mar 13, 2025 at 08:12:20PM +0800, daixin_tkzc wrote:
>> Thank you for reviewing my patch.
>>=20
>>=20
>> I'm sorry I just responded individually.
>>=20
>>=20
>> Of course, when the USB device and host are transmitting normally, us->i=
obuf size is 64, which is enough for CBW/CSW and there will be no problem.=
=20
>> Howerver, we encountered a problem in the FPGA verification environment,=
 that is, the DWC otg controller detected a Babble Error, and we believe th=
at the processing flow of the device driver will cause the risk of us->iobu=
f overflow.=20
>>=20
>>=20
>> Regarding USB Babble Error, the DWC_otg_programming manual describes it =
as follows:
>> |
>>=20
>> 3.8.1 Handling Babble Conditions
>>=20
>> DWC_otg handles two cases of babble: packet babble and port babble. Pack=
et babble occurs if the device sends more data than the maximum packet size=
 for the channel. Port babble occurs if the controller continues to receive=
 data from the device at EOF2 (the end of frame 2, which is very close to S=
OF).
>>=20
>> When DWC_otg detects a packet babble, it stops writing data into the Rx =
buffer and waits for the end of packet (EOP). When it detects an EOP, it fl=
ushes already-written data in the Rx buffer and generates a Babble interrup=
t to the application
>>=20
>> |
>
>What is your point?
>
>Are you claiming that the DWC_otg driver doesn't handle packet babble=20
>properly?  If that is true then you need to fix the DWC_otg driver, not=20
>change the usb-storage driver.
>
>You have not done a good job of explaining how us->iobuf overflow could=20
>occur.
>
>Alan Stern

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/1681f087.2727.195927b7ccb.Coremail.daixin_tkzc%=
40163.com.

------=_Part_38362_1064403213.1741919321291
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div data-ntes=3D"ntes_mail_body_root" style=3D"line-height:1.7;color:#0000=
00;font-size:14px;font-family:Arial"><div id=3D"spnEditorContent"><p style=
=3D"margin: 0;"><span style=3D"font-family: Calibri; font-size: 10.5pt;">I'=
m sorry for not making my point clear.</span><span style=3D"font-family: =
=E5=AE=8B=E4=BD=93; font-size: 10.5pt;">&nbsp;</span></p><p class=3D"MsoNor=
mal"><span style=3D"mso-spacerun:'yes';font-family:=E5=AE=8B=E4=BD=93;mso-a=
scii-font-family:Calibri;
mso-hansi-font-family:Calibri;mso-bidi-font-family:'Times New Roman';font-s=
ize:10.5000pt;
mso-font-kerning:1.0000pt;"><font face=3D"Calibri" class=3D"">DWC_otg drive=
r can&nbsp;h</font></span><span style=3D"mso-spacerun:'yes';font-family:=E5=
=AE=8B=E4=BD=93;mso-ascii-font-family:Calibri;
mso-hansi-font-family:Calibri;mso-bidi-font-family:'Times New Roman';font-s=
ize:10.5000pt;
mso-font-kerning:1.0000pt;"><font face=3D"Calibri">andle packet babble </fo=
nt></span><span style=3D"mso-spacerun:'yes';font-family:=E5=AE=8B=E4=BD=93;=
mso-ascii-font-family:Calibri;
mso-hansi-font-family:Calibri;mso-bidi-font-family:'Times New Roman';font-s=
ize:10.5000pt;
mso-font-kerning:1.0000pt;"><font face=3D"Calibri">in the data phase </font=
></span><span style=3D"mso-spacerun:'yes';font-family:=E5=AE=8B=E4=BD=93;ms=
o-ascii-font-family:Calibri;
mso-hansi-font-family:Calibri;mso-bidi-font-family:'Times New Roman';font-s=
ize:10.5000pt;
mso-font-kerning:1.0000pt;"><font face=3D"Calibri">properly</font></span><s=
pan style=3D"mso-spacerun:'yes';font-family:=E5=AE=8B=E4=BD=93;mso-ascii-fo=
nt-family:Calibri;
mso-hansi-font-family:Calibri;mso-bidi-font-family:'Times New Roman';font-s=
ize:10.5000pt;
mso-font-kerning:1.0000pt;"><font face=3D"Calibri">. It provides interrupt =
function, </font></span><b><span style=3D"font-family: =E5=AE=8B=E4=BD=93; =
font-size: 10.5pt;"><font face=3D"Calibri">dwc2_hc_babble_intr</font></span=
></b><span style=3D"mso-spacerun:'yes';font-family:=E5=AE=8B=E4=BD=93;mso-a=
scii-font-family:Calibri;
mso-hansi-font-family:Calibri;mso-bidi-font-family:'Times New Roman';font-s=
ize:10.5000pt;
mso-font-kerning:1.0000pt;"><font face=3D"Calibri">, It mainly does two thi=
ngs:</font></span><span style=3D"mso-spacerun:'yes';font-family:=E5=AE=8B=
=E4=BD=93;mso-ascii-font-family:Calibri;
mso-hansi-font-family:Calibri;mso-bidi-font-family:'Times New Roman';font-s=
ize:10.5000pt;
mso-font-kerning:1.0000pt;"><o:p></o:p></span></p><p class=3D"MsoNormal"><!=
--[if !supportLists]--><span style=3D"font-family:Calibri;mso-fareast-font-=
family:=E5=AE=8B=E4=BD=93;mso-bidi-font-family:'Times New Roman';
font-size:10.5000pt;mso-font-kerning:1.0000pt;">1)&nbsp;</span><!--[endif]-=
-><span style=3D"mso-spacerun:'yes';font-family:Calibri;mso-fareast-font-fa=
mily:=E5=AE=8B=E4=BD=93;
mso-bidi-font-family:'Times New Roman';font-size:10.5000pt;mso-font-kerning=
:1.0000pt;">Delete the URB request from the endpoint linked list maintained=
 by the USB host controller, mark the URB transfer result as OVERFLOW error=
, and delete the remaining URB requests in the data </span><span style=3D"m=
so-spacerun:'yes';font-family:=E5=AE=8B=E4=BD=93;mso-ascii-font-family:Cali=
bri;
mso-hansi-font-family:Calibri;mso-bidi-font-family:'Times New Roman';font-s=
ize:10.5000pt;
mso-font-kerning:1.0000pt;"><font face=3D"Calibri" class=3D"">phase&nbsp;of=
 the BOT transfer.</font></span><span style=3D"mso-spacerun:'yes';font-fami=
ly:Calibri;mso-fareast-font-family:=E5=AE=8B=E4=BD=93;
mso-bidi-font-family:'Times New Roman';font-size:10.5000pt;mso-font-kerning=
:1.0000pt;"><o:p></o:p></span></p><p class=3D"MsoNormal"><!--[if !supportLi=
sts]--><span style=3D"font-family:Calibri;mso-fareast-font-family:=E5=AE=8B=
=E4=BD=93;mso-bidi-font-family:'Times New Roman';
font-size:10.5000pt;mso-font-kerning:1.0000pt;">2)&nbsp;</span><!--[endif]-=
-><span style=3D"mso-spacerun:'yes';font-family:Calibri;mso-fareast-font-fa=
mily:=E5=AE=8B=E4=BD=93;
mso-bidi-font-family:'Times New Roman';font-size:10.5000pt;mso-font-kerning=
:1.0000pt;">Halt the currently used channel and indicate that the reason fo=
r the channel halt is Babble Error.</span><span style=3D"mso-spacerun:'yes'=
;font-family:Calibri;mso-fareast-font-family:=E5=AE=8B=E4=BD=93;
mso-bidi-font-family:'Times New Roman';font-size:10.5000pt;mso-font-kerning=
:1.0000pt;"><o:p></o:p></span></p><p class=3D"MsoNormal"><span style=3D"fon=
t-size: 10.5pt; font-family: Calibri;">When the urb complete&nbsp;</span><s=
pan style=3D"font-size: 10.5pt; font-family: =E5=AE=8B=E4=BD=93;"><font fac=
e=3D"Calibri">(babble error occurs)</font></span><span style=3D"font-size: =
10.5pt; font-family: Calibri;">, the </span><b><span style=3D"font-family: =
Calibri; font-size: 10.5pt;">sg_complete</span></b><span style=3D"font-size=
: 10.5pt; font-family: Calibri;">&nbsp;function&nbsp;</span><span style=3D"=
font-size: 10.5pt; font-family: =E5=AE=8B=E4=BD=93;"><font face=3D"Calibri"=
>of urb(s)</font></span><span style=3D"font-size: 10.5pt; font-family: Cali=
bri;">&nbsp;</span><span style=3D"font-size: 10.5pt; font-family: =E5=AE=8B=
=E4=BD=93;"><font face=3D"Calibri">will </font></span><span style=3D"font-s=
ize: 10.5pt; font-family: Calibri;">notify the mass storage driver that the=
 data</span><span style=3D"mso-spacerun:'yes';font-family:Calibri;mso-farea=
st-font-family:=E5=AE=8B=E4=BD=93;
mso-bidi-font-family:'Times New Roman';font-size:10.5000pt;mso-font-kerning=
:1.0000pt;" class=3D""> phase of the BOT&nbsp;transfer&nbsp;is over.&nbsp;T=
he rest is done by the mass</span><span style=3D"font-size: 10.5pt; font-fa=
mily: =E5=AE=8B=E4=BD=93;"><font face=3D"Calibri"> storage </font></span><s=
pan style=3D"font-size: 10.5pt; font-family: Calibri;">driver</span><span s=
tyle=3D"font-size: 10.5pt; font-family: =E5=AE=8B=E4=BD=93;"><font face=3D"=
Calibri">, such us:</font></span></p><p class=3D"MsoNormal"><!--[if !suppor=
tLists]--><span style=3D"font-family:=E5=AE=8B=E4=BD=93;mso-ascii-font-fami=
ly:Calibri;mso-hansi-font-family:Calibri;
mso-bidi-font-family:'Times New Roman';font-size:10.5000pt;mso-font-kerning=
:1.0000pt;">1)&nbsp;</span><!--[endif]--><span style=3D"mso-spacerun:'yes';=
font-family:=E5=AE=8B=E4=BD=93;mso-ascii-font-family:Calibri;
mso-hansi-font-family:Calibri;mso-bidi-font-family:'Times New Roman';font-s=
ize:10.5000pt;
mso-font-kerning:1.0000pt;"><font face=3D"Calibri">Get CSW for device statu=
s, interpret CSW, return USB_STOR_TRANSPORT_ERROR.</font></span><span style=
=3D"mso-spacerun:'yes';font-family:=E5=AE=8B=E4=BD=93;mso-ascii-font-family=
:Calibri;
mso-hansi-font-family:Calibri;mso-bidi-font-family:'Times New Roman';font-s=
ize:10.5000pt;
mso-font-kerning:1.0000pt;"><o:p></o:p></span></p><p class=3D"MsoNormal"><!=
--[if !supportLists]--><span style=3D"font-family:=E5=AE=8B=E4=BD=93;mso-as=
cii-font-family:Calibri;mso-hansi-font-family:Calibri;
mso-bidi-font-family:'Times New Roman';font-size:10.5000pt;mso-font-kerning=
:1.0000pt;">2)&nbsp;</span><!--[endif]--><span style=3D"mso-spacerun:'yes';=
font-family:=E5=AE=8B=E4=BD=93;mso-ascii-font-family:Calibri;
mso-hansi-font-family:Calibri;mso-bidi-font-family:'Times New Roman';font-s=
ize:10.5000pt;
mso-font-kerning:1.0000pt;"><font face=3D"Calibri">Handle Errors(here is US=
B_STOR_TRANSPORT_ERROR).</font></span><span style=3D"mso-spacerun:'yes';fon=
t-family:Calibri;mso-fareast-font-family:=E5=AE=8B=E4=BD=93;
mso-bidi-font-family:'Times New Roman';font-size:10.5000pt;mso-font-kerning=
:1.0000pt;"><o:p></o:p></span></p><p class=3D"MsoNormal"><!--[if !supportLi=
sts]--><span style=3D"font-family:=E5=AE=8B=E4=BD=93;mso-ascii-font-family:=
Calibri;mso-hansi-font-family:Calibri;
mso-bidi-font-family:'Times New Roman';font-size:10.5000pt;mso-font-kerning=
:1.0000pt;">3)&nbsp;</span><!--[endif]--><span style=3D"mso-spacerun:'yes';=
font-family:=E5=AE=8B=E4=BD=93;mso-ascii-font-family:Calibri;
mso-hansi-font-family:Calibri;mso-bidi-font-family:'Times New Roman';font-s=
ize:10.5000pt;
mso-font-kerning:1.0000pt;"><font face=3D"Calibri">Initiate port reset.</fo=
nt></span><span style=3D"mso-spacerun:'yes';font-family:Calibri;mso-fareast=
-font-family:=E5=AE=8B=E4=BD=93;
mso-bidi-font-family:'Times New Roman';font-size:10.5000pt;mso-font-kerning=
:1.0000pt;"><o:p></o:p></span></p><p class=3D"MsoNormal"><!--[if !supportLi=
sts]--><span style=3D"font-family:=E5=AE=8B=E4=BD=93;mso-ascii-font-family:=
Calibri;mso-hansi-font-family:Calibri;
mso-bidi-font-family:'Times New Roman';font-size:10.5000pt;mso-font-kerning=
:1.0000pt;">4)&nbsp;</span><!--[endif]--><span style=3D"mso-spacerun:'yes';=
font-family:=E5=AE=8B=E4=BD=93;mso-ascii-font-family:Calibri;
mso-hansi-font-family:Calibri;mso-bidi-font-family:'Times New Roman';font-s=
ize:10.5000pt;
mso-font-kerning:1.0000pt;"><font face=3D"Calibri">Notify t</font></span><s=
pan style=3D"mso-spacerun:'yes';font-family:Calibri;mso-fareast-font-family=
:=E5=AE=8B=E4=BD=93;
mso-bidi-font-family:'Times New Roman';font-size:10.5000pt;mso-font-kerning=
:1.0000pt;">he SCSI layer implements a retransmission mechanism</span><span=
 style=3D"mso-spacerun:'yes';font-family:=E5=AE=8B=E4=BD=93;mso-ascii-font-=
family:Calibri;
mso-hansi-font-family:Calibri;mso-bidi-font-family:'Times New Roman';font-s=
ize:10.5000pt;
mso-font-kerning:1.0000pt;"><font face=3D"Calibri">.</font></span></p><p cl=
ass=3D"MsoNormal"><span style=3D"mso-spacerun:'yes';font-family:=E5=AE=8B=
=E4=BD=93;mso-ascii-font-family:Calibri;
mso-hansi-font-family:Calibri;mso-bidi-font-family:'Times New Roman';font-s=
ize:10.5000pt;
mso-font-kerning:1.0000pt;"><font face=3D"Calibri">H</font></span><span sty=
le=3D"mso-spacerun:'yes';font-family:Calibri;mso-fareast-font-family:=E5=AE=
=8B=E4=BD=93;
mso-bidi-font-family:'Times New Roman';font-size:10.5000pt;mso-font-kerning=
:1.0000pt;">ow us-&gt;iobuf overflow could occur</span><span style=3D"mso-s=
pacerun:'yes';font-family:=E5=AE=8B=E4=BD=93;mso-ascii-font-family:Calibri;
mso-hansi-font-family:Calibri;mso-bidi-font-family:'Times New Roman';font-s=
ize:10.5000pt;
mso-font-kerning:1.0000pt;"><font face=3D"Calibri">?</font></span></p><p cl=
ass=3D"MsoNormal"><span style=3D"mso-spacerun:'yes';font-family:=E5=AE=8B=
=E4=BD=93;mso-ascii-font-family:Calibri;
mso-hansi-font-family:Calibri;mso-bidi-font-family:'Times New Roman';font-s=
ize:10.5000pt;
mso-font-kerning:1.0000pt;"><font face=3D"Calibri">For 1), the USB device d=
oes not know that a Babble Error has occurred at this time (DWC_otg knows w=
hat happened), It actually continuously returns 512 bytes data through DMA =
write to CSW address (As can be seen in the waveform in the appendix docume=
nt before). The DWC_otg controller driver cannot control how much data the =
device returns(13 or 512 bytes). However, the USB storage driver pre-alloca=
tes a default buffer size of 64 bytes for CBW/CSW.</font></span><span style=
=3D"mso-spacerun:'yes';font-family:=E5=AE=8B=E4=BD=93;mso-ascii-font-family=
:Calibri;
mso-hansi-font-family:Calibri;mso-bidi-font-family:'Times New Roman';font-s=
ize:10.5000pt;
mso-font-kerning:1.0000pt;"><o:p></o:p></span></p><p class=3D"MsoNormal"><s=
pan style=3D"font-size: 10.5pt; font-family: =E5=AE=8B=E4=BD=93;"><font fac=
e=3D"Calibri">For 3), the device does not realize that a babble error has o=
ccurred until the port reset is successfully completed (by interface </font=
></span><b><span style=3D"font-family: =E5=AE=8B=E4=BD=93; font-size: 10.5p=
t;"><font face=3D"Calibri">usb_stor_port_reset</font></span></b><span style=
=3D"font-size: 10.5pt; font-family: =E5=AE=8B=E4=BD=93;"><font face=3D"Cali=
bri">). Then device will enter the enumeration process. It looks like thing=
s are heading in the right direction.</font></span></p><p class=3D"MsoNorma=
l"><span style=3D"font-size: 10.5pt; font-family: =E5=AE=8B=E4=BD=93;"><fon=
t face=3D"Calibri" class=3D"">For 4),&nbsp;as for the urb that has a babble=
 error, SCSI will execute a retransmission mechanism.</font></span></p><p c=
lass=3D"MsoNormal"><span style=3D"mso-spacerun:'yes';font-family:=E5=AE=8B=
=E4=BD=93;mso-ascii-font-family:Calibri;
mso-hansi-font-family:Calibri;mso-bidi-font-family:'Times New Roman';font-s=
ize:10.5000pt;
mso-font-kerning:1.0000pt;"><font face=3D"Calibri">thanks,</font></span><sp=
an style=3D"mso-spacerun:'yes';font-family:=E5=AE=8B=E4=BD=93;mso-ascii-fon=
t-family:Calibri;
mso-hansi-font-family:Calibri;mso-bidi-font-family:'Times New Roman';font-s=
ize:10.5000pt;
mso-font-kerning:1.0000pt;"><o:p></o:p></span></p><p class=3D"MsoNormal"><s=
pan style=3D"mso-spacerun:'yes';font-family:=E5=AE=8B=E4=BD=93;mso-ascii-fo=
nt-family:Calibri;
mso-hansi-font-family:Calibri;mso-bidi-font-family:'Times New Roman';font-s=
ize:10.5000pt;
mso-font-kerning:1.0000pt;"><font face=3D"Calibri">Dai xin</font></span><sp=
an style=3D"mso-spacerun:'yes';font-family:Calibri;mso-fareast-font-family:=
=E5=AE=8B=E4=BD=93;
mso-bidi-font-family:'Times New Roman';font-size:10.5000pt;mso-font-kerning=
:1.0000pt;"><o:p></o:p></span></p><p style=3D"margin: 0;"><br></p><p style=
=3D"margin: 0;"><br></p><p style=3D"margin: 0;"><br></p></div><div style=3D=
"position:relative;zoom:1"></div><div id=3D"divNeteaseMailCard"></div><p st=
yle=3D"margin: 0;"><br></p><pre><br>At 2025-03-13 22:36:32, "Alan Stern" &l=
t;stern@rowland.harvard.edu&gt; wrote:
&gt;On Thu, Mar 13, 2025 at 08:12:20PM +0800, daixin_tkzc wrote:
&gt;&gt; Thank you for reviewing my patch.
&gt;&gt;=20
&gt;&gt;=20
&gt;&gt; I'm sorry I just responded individually.
&gt;&gt;=20
&gt;&gt;=20
&gt;&gt; Of course, when the USB device and host are transmitting normally,=
 us-&gt;iobuf size is 64, which is enough for CBW/CSW and there will be no =
problem.=20
&gt;&gt; Howerver, we encountered a problem in the FPGA verification enviro=
nment, that is, the DWC otg controller detected a Babble Error, and we beli=
eve that the processing flow of the device driver will cause the risk of us=
-&gt;iobuf overflow.=20
&gt;&gt;=20
&gt;&gt;=20
&gt;&gt; Regarding USB Babble Error, the DWC_otg_programming manual describ=
es it as follows:
&gt;&gt; |
&gt;&gt;=20
&gt;&gt; 3.8.1 Handling Babble Conditions
&gt;&gt;=20
&gt;&gt; DWC_otg handles two cases of babble: packet babble and port babble=
. Packet babble occurs if the device sends more data than the maximum packe=
t size for the channel. Port babble occurs if the controller continues to r=
eceive data from the device at EOF2 (the end of frame 2, which is very clos=
e to SOF).
&gt;&gt;=20
&gt;&gt; When DWC_otg detects a packet babble, it stops writing data into t=
he Rx buffer and waits for the end of packet (EOP). When it detects an EOP,=
 it flushes already-written data in the Rx buffer and generates a Babble in=
terrupt to the application
&gt;&gt;=20
&gt;&gt; |
&gt;
&gt;What is your point?
&gt;
&gt;Are you claiming that the DWC_otg driver doesn't handle packet babble=
=20
&gt;properly?  If that is true then you need to fix the DWC_otg driver, not=
=20
&gt;change the usb-storage driver.
&gt;
&gt;You have not done a good job of explaining how us-&gt;iobuf overflow co=
uld=20
&gt;occur.
&gt;
&gt;Alan Stern
</pre></div><img style=3D"width:1px;height:1px" src=3D"https://count.mail.1=
63.com/beacon/webmail.gif?type=3Dwebmail_mailtrace&amp;guid=3Dpre_3fc53a3dc=
aa50f01a7f3ca3fd3ccf94c">

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;USB Mass Storage on Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:usb-storage+unsubscribe@lists.one-eyed-alien.net"=
>usb-storage+unsubscribe@lists.one-eyed-alien.net</a>.<br />
To view this discussion visit <a href=3D"https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/1681f087.2727.195927b7ccb.Coremail.d=
aixin_tkzc%40163.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups=
.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1681f087.2727.19=
5927b7ccb.Coremail.daixin_tkzc%40163.com</a>.<br />

------=_Part_38362_1064403213.1741919321291--

