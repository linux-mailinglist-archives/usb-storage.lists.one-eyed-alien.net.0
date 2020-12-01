Return-Path: <usb-storage+bncBDVIJONZ3YDRBUFUS77AKGQEF4NV6OY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1642C9730
	for <lists+usb-storage@lfdr.de>; Tue,  1 Dec 2020 06:53:21 +0100 (CET)
Received: by mail-qt1-x847.google.com with SMTP id t1sf106799qtr.19
        for <lists+usb-storage@lfdr.de>; Mon, 30 Nov 2020 21:53:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606802000; cv=pass;
        d=google.com; s=arc-20160816;
        b=j/yVhy5nbHZtzJTETB5OyHrasO77Q21M1cgYWv0EIHzx6M/IX99nw4PwqNM4ZYpujt
         nacMGQfmp/TDZGwbuYEArLC3Pc/4W2PW8TV5u3BKjQ3H9a1SeEiqlC4T6lqXwCNpT0xt
         s254hxDzAMnVCRwZrbWauwCZVfIi9LW9yhw2DjgSWEFaR9ihrFuHdzcmm7fgQsBEKY4R
         zdvPXGz6gi9mc4FwjDna41UvVde3+nLJ/RvQ3dYSL8SoGOELRPIDaHdGLr9XQ12DbBOZ
         fyIZsbCcUt8b9ole/SiZn7KN4Y70QNfX+QpqQ+OFFZUfEMVEVIoMV3yHnW1gfzgBWxBp
         Sv2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to:date
         :references:message-id:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=+9E882A6KllJJyQhDhGGUjq5HkMypbhSWAhNErxIbLc=;
        b=ohWl13fWYcIlda5NNAy7INhGXRglVGjQ4qaGGSYAa88ujdPUYvNc4UAO0UNnxKDBYE
         HMZPaYrbyFQmQvXoy/PvAe+k4oe7Mvp8Lb/+aCY4f30XkxQoq3tVDkvz53NexiWa0I+P
         tTZ2PiznmEvttdezHnGKmdx3YFh2B7wZG5/q9UQ8vsyG3RsIBd5VQ3dhWbxGRxnhs/ig
         pm0pGZmnNN0qdOV3iCuhi75o7M2lzi4aUu7SZJ9b+pI54IWb5tEp+/3QgZhqTX+4jpTv
         AaL5uYiCqWnU7nNcFL8Qb0VGYm1coZZBYV0XuaaW/V/Bliz9FxhaUY4NYL42rKqjeopI
         PT1Q==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=emDPbOhP;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:to:cc:subject:from:organization:message-id:references:date
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+9E882A6KllJJyQhDhGGUjq5HkMypbhSWAhNErxIbLc=;
        b=JtfnRMLKY4ujhgnXiHwGmIf6yUpDiIluOytfwm3HwIzrQ8Nu5051RbI0RfX8Xsz2LO
         4pQXMmMXlHylna/kwHwbV95pHYYOTQ3hrlsNc4KgsbXR8lFlhgJCaRCnXLNRSOhYQYa1
         ADRtmOl1ykRN9cLS6jSZq2fZwkD0IPyqj/Tjk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :message-id:references:date:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+9E882A6KllJJyQhDhGGUjq5HkMypbhSWAhNErxIbLc=;
        b=eTSUZnDGmRrhOjIJhWJCujJ1itpv4V4i7RWARVbGgziZx9zxhp7Y51BwJ0NvDapOCs
         J2uu+wpn0+jblZWEmxAqp3LguvMyhEu67dyIoanIEeBID/6wrfVIWDgS0I56fL+1nAOh
         O8J/Gp4h9lHToq3UFdAdPgZqeGxChaUutrEHs3+66s0jls0fjOxPckA481LwwLGGsxZ8
         /d/LygzHJeN1oiNtwQu9EcXU07bNP8GDC/2hhggL/uA/xVeOY1TbF2JzBTnciHGCANkK
         uKwDtIaHHpfNzpK4HZBsQmQqCDXpel9Ygxv0vjnAHG+sufk7vR7hf4Z4dOCeOxcb9/fO
         Uv7Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532l9pXLAn2lgRaYVyGzLypLWltZdsmfslwYWoM/dqDtGzbfU72A
	Okj7m0DdCDjMy7vOrW1TdCo1/w==
X-Google-Smtp-Source: ABdhPJytoH7hCHXblX8qmVwyHtam9Nco/adzPJ2k/pkbFr5WQs8bok4I+Rg11ZPcW2gf32aSzLpDrg==
X-Received: by 2002:ac8:5c15:: with SMTP id i21mr1253204qti.190.1606802000409;
        Mon, 30 Nov 2020 21:53:20 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:620a:648:: with SMTP id a8ls436590qka.2.gmail; Mon, 30
 Nov 2020 21:53:19 -0800 (PST)
X-Received: by 2002:a37:2d05:: with SMTP id t5mr1295432qkh.271.1606801999771;
        Mon, 30 Nov 2020 21:53:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606801999; cv=none;
        d=google.com; s=arc-20160816;
        b=dBQ35Rru5qyVcKYL7D5nDNRtY4HbxZMFwbe49Szg49ErZM+EN3Z0sgBn5oHentxx5G
         thyDaWzVapcDWwLIyqjCL2GkC7NF3ca9ErMkHAP1Xf4u3IGGM7JSrvv/XgSz5EjfHWoP
         LgW9HaoyxzWLpBMw4n1JOiSG2Vi9hsSJ8KgcrKekVVg8tKQh/ydUp+Gti6f/qMexrZUg
         8N0xn1r/lWFetKPDKpxPyVyljGVdJvSqhDJtQrMiDisUBfkgbJw+4Jy+qLzyez7lSvLG
         ABDIxnwzgIVGk2gbJ9Rnlt2S0Nl4SlBql+LBbeopgGdwF39inHXQC1+wW3ij4UVO7GXe
         hT9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:date:references:message-id:organization
         :from:subject:cc:to:dkim-signature;
        bh=l9ihS9O8ty7fvCGsyg6t+FL2UWzq+Pp7wI7g9M3fu94=;
        b=XDijLQFAWF3iRgm/pFpFhv/yBgNFLOojzqSk2ugtEprVFBCDI4M3/D2P1jpZaYpqvY
         NPduEWTVtcKKYEDjxqOU68RGQIJ7YHWkBxjdQ8yJHwBdp+Jjw2QmfjjDy5ZV5HDx4+E7
         lz2vAffBQgvY/iouih8cRK3G0PM3E9vyvqOT1Qz3B4U1upA1un9x+UZ2Z+tY+Yb/JAY7
         N230yHrW5y0/HlAa75AHf3IA8VKNvnb29lA4dAz++AoEU+0b4wcmWyXi+en8IGxvxNFr
         TLpcQfk9lEnNVPfhDaF4mMLoyOVUkw97NAXS28eor4O+RqzpT36W9W7cLR1cQTeWtULT
         3M6g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=emDPbOhP;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2130.oracle.com (aserp2130.oracle.com. [141.146.126.79])
        by mx.google.com with ESMTPS id k24si468232qtk.63.2020.11.30.21.53.19
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Nov 2020 21:53:19 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.79 as permitted sender) client-ip=141.146.126.79;
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
	by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B15n67q107471;
	Tue, 1 Dec 2020 05:53:05 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by aserp2130.oracle.com with ESMTP id 353c2aru96-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 01 Dec 2020 05:53:05 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B15oGDF104852;
	Tue, 1 Dec 2020 05:53:04 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by userp3020.oracle.com with ESMTP id 3540arqfy6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 01 Dec 2020 05:53:04 +0000
Received: from userp3020.oracle.com (userp3020.oracle.com [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 0B15r2KY111063;
	Tue, 1 Dec 2020 05:53:02 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by userp3020.oracle.com with ESMTP id 3540arqfwj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 01 Dec 2020 05:53:02 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0B15qbsa005213;
	Tue, 1 Dec 2020 05:52:40 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 30 Nov 2020 21:52:37 -0800
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
        amd-gfx@lists.freedesktop.org, bridge@lists.linux-foundation.org,
        ceph-devel@vger.kernel.org, cluster-devel@redhat.com,
        coreteam@netfilter.org, devel@driverdev.osuosl.org,
        dm-devel@redhat.com, drbd-dev@tron.linbit.com,
        dri-devel@lists.freedesktop.org, GR-everest-linux-l2@marvell.com,
        GR-Linux-NIC-Dev@marvell.com, intel-gfx@lists.freedesktop.org,
        intel-wired-lan@lists.osuosl.org, keyrings@vger.kernel.org,
        linux1394-devel@lists.sourceforge.net, linux-acpi@vger.kernel.org,
        linux-afs@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, linux-atm-general@lists.sourceforge.net,
        linux-block@vger.kernel.org, linux-can@vger.kernel.org,
        linux-cifs@vger.kernel.org, linux-crypto@vger.kernel.org,
        linux-decnet-user@lists.sourceforge.net, linux-ext4@vger.kernel.org,
        linux-fbdev@vger.kernel.org, linux-geode@lists.infradead.org,
        linux-gpio@vger.kernel.org, linux-hams@vger.kernel.org,
        linux-hwmon@vger.kernel.org, linux-i3c@lists.infradead.org,
        linux-ide@vger.kernel.org, linux-iio@vger.kernel.org,
        linux-input@vger.kernel.org, linux-integrity@vger.kernel.org,
        linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org,
        linux-mmc@vger.kernel.org, linux-mm@kvack.org,
        linux-mtd@lists.infradead.org, linux-nfs@vger.kernel.org,
        linux-rdma@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org,
        linux-security-module@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com, linux-usb@vger.kernel.org,
        linux-watchdog@vger.kernel.org, linux-wireless@vger.kernel.org,
        netdev@vger.kernel.org, netfilter-devel@vger.kernel.org,
        nouveau@lists.freedesktop.org, op-tee@lists.trustedfirmware.org,
        oss-drivers@netronome.com, patches@opensource.cirrus.com,
        rds-devel@oss.oracle.com, reiserfs-devel@vger.kernel.org,
        samba-technical@lists.samba.org, selinux@vger.kernel.org,
        target-devel@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
        usb-storage@lists.one-eyed-alien.net,
        virtualization@lists.linux-foundation.org, wcn36xx@lists.infradead.org,
        x86@kernel.org, xen-devel@lists.xenproject.org,
        linux-hardening@vger.kernel.org,
        Nick Desaulniers
 <ndesaulniers@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Miguel Ojeda <ojeda@kernel.org>, Joe Perches <joe@perches.com>,
        Kees
 Cook <keescook@chromium.org>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq1h7p6gjkk.fsf@ca-mkp.ca.oracle.com>
References: <cover.1605896059.git.gustavoars@kernel.org>
Date: Tue, 01 Dec 2020 00:52:27 -0500
In-Reply-To: <cover.1605896059.git.gustavoars@kernel.org> (Gustavo
	A. R. Silva's message of "Fri, 20 Nov 2020 12:21:39 -0600")
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9821 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1 lowpriorityscore=0
 clxscore=1011 bulkscore=0 mlxlogscore=289 phishscore=0 malwarescore=0
 spamscore=0 adultscore=0 mlxscore=0 priorityscore=1501 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012010039
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=emDPbOhP;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 141.146.126.79 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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


Gustavo,

> This series aims to fix almost all remaining fall-through warnings in
> order to enable -Wimplicit-fallthrough for Clang.

Applied 20-22,54,120-124 to 5.11/scsi-staging, thanks.

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/yq1h7p6gjkk.fsf%40ca-mkp.ca.oracle.com.
