Return-Path: <usb-storage+bncBDZM7VEIVIFBB3HI32DQMGQEF5LOKSI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x746.google.com (mail-qk1-x746.google.com [IPv6:2607:f8b0:4864:20::746])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7F13D0873
	for <lists+usb-storage@lfdr.de>; Wed, 21 Jul 2021 07:45:19 +0200 (CEST)
Received: by mail-qk1-x746.google.com with SMTP id o14-20020a05620a0d4eb02903a5eee61155sf965373qkl.9
        for <lists+usb-storage@lfdr.de>; Tue, 20 Jul 2021 22:45:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626846317; cv=pass;
        d=google.com; s=arc-20160816;
        b=dlQUpMC0GLIO+jdgNO+qNWk6dPW4XfFtKXj3JgDP4ciNTkfZN2NdEV1035HQeke52v
         W+i/Z7M0zZfz2BoFz88bEC+1sB86MfNsf8FhzHqUCQ74/b23YRej2Js4w8bnzqOHy/2L
         H3ylIHwc/JUvMqm6XT+sNyskAgbnpq0cj7QnVZOErjBPbGa9zD3nlGP8a33MTSJPkj+4
         1xzUKw1yFli5RT/ZOiXMWYPsih+0vFj3NdRpaLTSEHlkhPVYmqh8kNzQCHJ6qCrBa4Mc
         mO3HgGq3NXE4tq91gAGpOc+9QCHJCPJsBC0n+aNs2owJNfEJyIfRQLfManUlvBjzDLW8
         dCqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=H8lhJVR7M6YN0dWFUVFHMo9dTZ6qE4Lj9t6mK0c7S0M=;
        b=hgQ7upYzUciSOlykVSos1g7FJDNGM63BhIqOhPTgZslQSoA3O1jiAabNPt/9ayYeb6
         ad/2pNqcJ2RF8Qo8ZD1C0hyzViTnyLq4C8mss7osqWjIdaAhbopzG0/Ht2ff1Be5vlbx
         +UPyzuyXhVDrGq/derG3cwh08q5WZJtOz339yCDjCxnzpe99ON7hqKdqf+Aug0RlzeDa
         RwN7zctf+av7jm2n5LDO2f0cV3ecxTxd7OThp9H4T63UDT3Fnrb+klJqsE1VBwa1CG2W
         yotHDBO4WcZu8NXYaGJVPJQcKF8m4X/0ecs8dz382CUwcHWLL9z9UjKZsVQPUHAk44+G
         w0+g==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oRhKGoMN;
       spf=pass (google.com: domain of jfquackenbush@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=jfquackenbush@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H8lhJVR7M6YN0dWFUVFHMo9dTZ6qE4Lj9t6mK0c7S0M=;
        b=gfzML+PudsNHE3j5xcFnQ9Fj8+RMPOM8W/spjBBbomfZQ6OJczN1JWJnVmziBPBy02
         KAPRJ0KEwVj7adhjgQduLCC527LCB8RkYzgGOgQqNGfbk79BtkddVjTevmQ7amz5N/wk
         dSXKLGZ0ypbLEKiEQx7AZm2P1xbUUacBsWoOc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H8lhJVR7M6YN0dWFUVFHMo9dTZ6qE4Lj9t6mK0c7S0M=;
        b=f3llw1WWDIU8ScjzUt3ID/BdpoiQSo/mip7H4A9pzkNS84oujBbz+BEHyIQ4PqMq32
         vtEadCZgCksfWf6k5UQSEpfVeTy6QyMa+lWBv4X0Vtl0QU0dT7twwd7OtxHgCF4v06pm
         UEWOYUc2NVer8E7C/yq+wYDIC2hKJeQF9CPbamwH3WqJFkqRaW3qvJod5N9d/ANW2Iqr
         jLbCSD+V0si+OJzqk0oWVVi+88mq1zAKtfKMP9k/u8thqSZtZ42B81sGXQfZ8irdd+Gt
         3UMg2FuKs8xkTdPrjFDKP2tUsN+zQnb6mwDc3L/4KNvNGZ0qpKvaB8eIvYMc8/EU1SoA
         x/RQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533P1IVdFWfFfCW8D7OjzlWQ/0PljMU157PXhqH3Ke9al2k9ivpU
	mPX2AOhXn8/N1p+kW8bWwFOMOQ==
X-Google-Smtp-Source: ABdhPJxnRRpe5Tm8Hx57z0Lyo9lkxvmhkG6ExtopeBybTZIiIlpW761cs1Ejz3H2vbWVejwlSkT+Wg==
X-Received: by 2002:ae9:ea18:: with SMTP id f24mr33160079qkg.177.1626846316977;
        Tue, 20 Jul 2021 22:45:16 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a37:aa8d:: with SMTP id t135ls876939qke.0.gmail; Tue, 20 Jul
 2021 22:45:16 -0700 (PDT)
X-Received: by 2002:a37:6353:: with SMTP id x80mr33113923qkb.464.1626846316575;
        Tue, 20 Jul 2021 22:45:16 -0700 (PDT)
Received: by 2002:a05:620a:a53:b029:3b8:926c:adb2 with SMTP id af79cd13be357-3b9a5f6d905ms85a;
        Tue, 20 Jul 2021 21:14:35 -0700 (PDT)
X-Received: by 2002:a1c:9d8f:: with SMTP id g137mr1760203wme.13.1626840874312;
        Tue, 20 Jul 2021 21:14:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626840874; cv=none;
        d=google.com; s=arc-20160816;
        b=hIPkJbJYrf47Q+6aK8KkdmCI2KMKCFofNF+yA+W/gxCTeO51ylW/pQnB+lE2M2hwIw
         KEEQH9BIHHIOZxXmTxK0HGr64p9tpe4xBcf4DzLB65+OLn2ggec2DYK3r7b1NZ+vVnXs
         f5ybFCrtX/WhZgTvcJa++VirGMOb9c82d6MUL+6lBbFjF03Xouk8BjviZ/ggF/u+nI79
         goRWN2tCf0+kHYMUtk23YUl3rZgpPC9v/G7kO8svWaJsXkXOG1P8JUFKM6dD/Y+j1lFC
         aNvKpbggGk8c3C6YrjnrZ0e4lU60bsnN5whJ4rEK7uSi0AMkgwout68446g3q+32lKW8
         mdHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=zR3Y5rwTCjjiBeMvmob6HEa2i+SD7irL+JzfvRlBPos=;
        b=ZJuKpLyEt3af1X0vSjJTcJNFjLvgF5gj4d0/fnGadDcRsuWbX+qDPfbyupkCI0ZnSX
         FpZTFN3z9skedlU8KElctjEeElIcyktMluH+0IEyUp8zmnv3bpaFrEE+Dj97Ve+bRvgc
         fCujUnIIPRPuDda4LI2WZI7D+CnJ2xlBTprYa2UG0wUj+1vIyTwVhXLJ49CGDVJtA0DW
         o4VnL2HDilvWq7J9I/FnKbJkWCi3Ptkbk3zckgd5tUxtbYnD5uqW0/F/JwAcJVWQKCeP
         hCAJ2dclYDITfoBzuNMZByu28tc2E2BC0m5vkYz/lOlbHsEOG6UCvbhY9SSCAIO6bTRQ
         uj/w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oRhKGoMN;
       spf=pass (google.com: domain of jfquackenbush@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=jfquackenbush@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id h7sor951569wrc.39.2021.07.20.21.14.34
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 20 Jul 2021 21:14:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of jfquackenbush@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a5d:4c50:: with SMTP id n16mr40349711wrt.249.1626840873986;
 Tue, 20 Jul 2021 21:14:33 -0700 (PDT)
MIME-Version: 1.0
From: Jason Quackenbush <jfquackenbush@gmail.com>
Date: Tue, 20 Jul 2021 21:14:22 -0700
Message-ID: <CAORgStp5VT5MVHuBeZEVW08VaUkUfCNHqWhiEKFTchKGzrzf9g@mail.gmail.com>
Subject: [usb-storage] unusual diagnostic message requestl?
To: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Content-Type: multipart/alternative; boundary="000000000000666f0305c79a6821"
X-Original-Sender: jfquackenbush@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=oRhKGoMN;       spf=pass
 (google.com: domain of jfquackenbush@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=jfquackenbush@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--000000000000666f0305c79a6821
Content-Type: text/plain; charset="UTF-8"

Hi, I received a strange notice in the dmesg log while trying to figure out
why a thumb drive is misbehaving. It told me to send the message to these
email addresses so I am doing as instructed. I've also included all the
messages included in the string beginning with when I plugged the stick in
up to the point where the log stopped because i ran the dmesg command.

Please let me know if you would like any additional information. The dmesg
output was as follows:

[30931.644203] usb 1-2.1: new high-speed USB device number 23 using xhci_hcd
[30931.720562] usb 1-2.1: New USB device found, idVendor=ffff,
idProduct=1201
[30931.720580] usb 1-2.1: New USB device strings: Mfr=0, Product=0,
SerialNumber=0
[30931.725709] usb-storage 1-2.1:1.0: USB Mass Storage device detected


*[30931.731119] usb-storage 1-2.1:1.0: This device (ffff,1201,0000 S 06 P
50) has unneeded SubClass and Protocol entries in unusual_devs.h (kernel
4.16.18-galliumos)                  Please send a copy of this message to
<linux-usb@vger.kernel.org <linux-usb@vger.kernel.org>> and
<usb-storage@lists.one-eyed-alien.net
<usb-storage@lists.one-eyed-alien.net>>*[30931.731321] scsi host0:
usb-storage 1-2.1:1.0
[30932.782520] scsi 0:0:0:0: Direct-Access     NAND     USB2DISK
0.00 PQ: 0 ANSI: 4
[30932.790957] sd 0:0:0:0: Attached scsi generic sg0 type 0
[30932.792202] sd 0:0:0:0: [sda] Attached SCSI removable disk

Best,
Jason Quackenbush

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAORgStp5VT5MVHuBeZEVW08VaUkUfCNHqWhiEKFTchKGzrzf9g%40mail.gmail.com.

--000000000000666f0305c79a6821
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, I received a strange notice in the dmesg log while try=
ing to figure out why a thumb drive is misbehaving. It told me to send the =
message to these email addresses so I am doing as instructed. I&#39;ve also=
 included all the messages included in the string beginning with when I plu=
gged the stick in up to the point where the log stopped because i ran the d=
mesg command.<br><br>Please let me know if you would like any additional=C2=
=A0information. The dmesg output was as follows:<br><br><div>[30931.644203]=
 usb 1-2.1: new high-speed USB device number 23 using xhci_hcd<br>[30931.72=
0562] usb 1-2.1: New USB device found, idVendor=3Dffff, idProduct=3D1201<br=
>[30931.720580] usb 1-2.1: New USB device strings: Mfr=3D0, Product=3D0, Se=
rialNumber=3D0<br>[30931.725709] usb-storage 1-2.1:1.0: USB Mass Storage de=
vice detected<br><span style=3D"background-color:rgb(255,255,255)"><font co=
lor=3D"#073763"><i><b>[30931.731119] usb-storage 1-2.1:1.0: This device (ff=
ff,1201,0000 S 06 P 50) has unneeded SubClass and Protocol entries in unusu=
al_devs.h (kernel 4.16.18-galliumos)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Please send a copy of this message to &lt;<a hr=
ef=3D"mailto:linux-usb@vger.kernel.org" target=3D"_blank">linux-usb@vger.ke=
rnel.org</a>&gt; and &lt;<a href=3D"mailto:usb-storage@lists.one-eyed-alien=
.net" target=3D"_blank">usb-storage@lists.one-eyed-alien.net</a>&gt;</b><br=
></i></font></span>[30931.731321] scsi host0: usb-storage 1-2.1:1.0<br>[309=
32.782520] scsi 0:0:0:0: Direct-Access =C2=A0 =C2=A0 NAND =C2=A0 =C2=A0 USB=
2DISK =C2=A0 =C2=A0 =C2=A0 =C2=A0 0.00 PQ: 0 ANSI: 4<br>[30932.790957] sd 0=
:0:0:0: Attached scsi generic sg0 type 0<br>[30932.792202] sd 0:0:0:0: [sda=
] Attached SCSI removable disk<br><br>Best,</div><div>Jason Quackenbush</di=
v></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;USB Mass Storage on Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:usb-storage+unsubscribe@lists.one-eyed-alien.net"=
>usb-storage+unsubscribe@lists.one-eyed-alien.net</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAORgStp5VT5MVHuBeZEVW08V=
aUkUfCNHqWhiEKFTchKGzrzf9g%40mail.gmail.com?utm_medium=3Demail&utm_source=
=3Dfooter">https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb=
-storage/CAORgStp5VT5MVHuBeZEVW08VaUkUfCNHqWhiEKFTchKGzrzf9g%40mail.gmail.c=
om</a>.<br />

--000000000000666f0305c79a6821--
