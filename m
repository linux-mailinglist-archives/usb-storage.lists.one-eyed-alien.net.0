Return-Path: <usb-storage+bncBD2NT6VEXYMRBDWM6H6QKGQEBZKVFDQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x446.google.com (mail-pf1-x446.google.com [IPv6:2607:f8b0:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id 5839A2C1B09
	for <lists+usb-storage@lfdr.de>; Tue, 24 Nov 2020 02:46:56 +0100 (CET)
Received: by mail-pf1-x446.google.com with SMTP id s18sf5558456pfc.10
        for <lists+usb-storage@lfdr.de>; Mon, 23 Nov 2020 17:46:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606182415; cv=pass;
        d=google.com; s=arc-20160816;
        b=dlWF3CpHOTy67caRsJWgfAzXiEBoMUU5FmeA96nTYuZWObTSIJglqzBjrvBCqpE5SC
         VrhoS0P3O6lsSsB100nAqPsabeTDh8+N7qwDrcHwoIhWOlAakANYAdZNTxcUGZjnv3Lj
         EYu5FobsHaJJYMvPZCIsQj7yBLzSXtXXZ4QUHSHZvuKsdptaaVLuPwXRzlqGybUzxV97
         T1FP93pnUbRjqcHdOxu3h2Rg4PtZNxRmkLql9416pp+j5ReTsEcNofna1+ZHOt47ip/K
         IFkjILSTgG730taaJuO/++YabqP17ho06wB+nmYTytb8167sR+peRYmzGbS2JaBFRqLw
         qRUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=9Z3bqpygy0hySHOPqExGe59eOM0/FcJeNv6Hl1oJWFM=;
        b=ZOz07F4pE1zxygTpAjZ3RAkGLQ8DwD5xM5tdt7jppJCKiIGLkV+MACWUFzfrbhpknH
         1cBL3mLiK2aWtOmBRGegq+1eg3oXs37ZI6kn76M9ZpfwNYuCYTCIHXcKIPQvSud0BZdW
         EI5sjIvT3xJLaqNH1f4vsieFC0M+/ylrQ0yNusRC0b8LnkYH9E/VxXUwm6Fx4HToaAMS
         TWTJTBqTRrypt74r4RVpdOA6Wmj9jo86Ei/Ga8lYS2YJCdKbJfGqQ9gAuSTgNBRGoma0
         hZQFRAu6nwggTfyXLcSG5Gvop/fQBBQODk6MTnpCMBiN+S1Sxztg9yDy8T2s85oO61Aj
         Dhog==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=UW7qkn00;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9Z3bqpygy0hySHOPqExGe59eOM0/FcJeNv6Hl1oJWFM=;
        b=MjmmzCeI0qQTFq18XizyymzM1lPzsXEvjiMIe8vbe+qkin6UDjJx0e3Wrv5bW5Jraa
         nW6LvYoReIhfcDrE/daLcKsOZyrLuRV/EgfT0M5pUb6GTGB2ba2Trg/Df5CiQ0zn18hc
         8dCqBqrBw1idWc2QD53UDM8xPlLfVfG2n/xbA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9Z3bqpygy0hySHOPqExGe59eOM0/FcJeNv6Hl1oJWFM=;
        b=MQihu85l2BppToFzCuVMwCPHViBC/d75R0pu7ShxeMq7DowrMpyrJrZq6bBwebHVyi
         peN3jCJ2+nvM8J3Rv8wSqHs7PCwnOU5GVkpQom7At+IN39VG9DdTl7qLR7vxObLB8zSq
         jPKsp+qiUxadS8LXaYIia9cnmZ7VphQjzhfvkzkyVMQCuf1TgfGDAx55AR0W9GXmmXrZ
         nnLtxGUeCncO6ww5YrMc88ijEziperOqnQg7meNL+SQwqMQJsq89BwahtSbTH6dFJ4kB
         a9mrwngF1KrQnTJarptJL8d8WKWz+tCyI+Cwvb/PQUB0m+ANZdiuMscnSsr+b/9Hqxtb
         lTLg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531331FkNJqtQgFUBX0BI0evJ/1tnSTCvpK+kj5aqty2Ar2sIwOj
	IANNG8r2CPseGFB7Dfz6htAi3g==
X-Google-Smtp-Source: ABdhPJw3E6GptzfanfXhQ82ngCMyVlQj4iFfCw7Epl520VScKnn1d6t3cLpPeFeVFAzTarOOp9HrMQ==
X-Received: by 2002:a17:90a:ea05:: with SMTP id w5mr2046060pjy.204.1606182415039;
        Mon, 23 Nov 2020 17:46:55 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:9a47:: with SMTP id x7ls7008192plv.1.gmail; Mon, 23
 Nov 2020 17:46:54 -0800 (PST)
X-Received: by 2002:a17:902:a5c7:b029:d8:edae:f4ea with SMTP id t7-20020a170902a5c7b02900d8edaef4eamr1946779plq.75.1606182414300;
        Mon, 23 Nov 2020 17:46:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606182414; cv=none;
        d=google.com; s=arc-20160816;
        b=gzFbW+xIcFj9vwX59KZ/++UQjCH2VuePwBG2MSV+CCGj8VU0WsMQ/SjejrWuu3JZg6
         6Ewp1ebbJW7LxY4hx/VxRYzMDCS8L5RRroiHhp7C01YT4rgReooXN8yzQQUz4go4O0e2
         UXTg5tDbtFVjJKbg9152iXRx9XweXVDXw97YXVSjF5iRfQ+vwbgmBoRePUcuBeFGG/U4
         4UaOc84GWf7UcgJ3tvaKYb81T2VnUaTOISx4+isJJC5FGtg8zntX+X3Weykfx78PiIHO
         NcF5M0leXzcr4VF9cjUKfAEupHXgzFMDPYMkF1Pa/9kXYhN/qSyKw41OILQrou2pdCdR
         pQ+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=MijA1anv2/2c2Fo5Zng6SUGSDafa7M8B+kStbsr6HlE=;
        b=W+YKE4KMYQsWec/TlIFOX7x6A6yEs/1+bY0fm+K28ckKUyiyZE4eH5kRAEc5ign+CW
         u/TKaZgGDt3WvXNcAz40DEJJfmEFAapkMKbuoAJIQLtHUOSfEJhrXLnMdyQrfH4VvvdU
         ANalsAfYLX7JiI86plke62BdjUqYBfjG4pJA6IeRYC/3yzPgDo8getgLfeiv/KQF9dFJ
         tfgXMQbW7gncEBI4NDyf6x3xcSD1c8iYIykKgiskTCFmfSjoCuJgZGWO0WkVYp0BO/AZ
         xgOR2+pzcKAlcVjndnLb0LrhmaoRWfYxRE4hzHbpaMVrgR4rmr1hXPxbObTc0YLIisHH
         VGtA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=UW7qkn00;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id na16si971242pjb.51.2020.11.23.17.46.54
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Nov 2020 17:46:54 -0800 (PST)
Received-SPF: pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown [163.114.132.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D0FEE206FA;
	Tue, 24 Nov 2020 01:46:49 +0000 (UTC)
Date: Mon, 23 Nov 2020 17:46:48 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>, "Gustavo A. R. Silva"
 <gustavoars@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 alsa-devel@alsa-project.org, amd-gfx list <amd-gfx@lists.freedesktop.org>,
 bridge@lists.linux-foundation.org, ceph-devel@vger.kernel.org,
 cluster-devel@redhat.com, coreteam@netfilter.org,
 devel@driverdev.osuosl.org, dm-devel@redhat.com, drbd-dev@lists.linbit.com,
 dri-devel <dri-devel@lists.freedesktop.org>,
 GR-everest-linux-l2@marvell.com, GR-Linux-NIC-Dev@marvell.com,
 intel-gfx@lists.freedesktop.org, intel-wired-lan@lists.osuosl.org,
 keyrings@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 linux-acpi@vger.kernel.org, linux-afs@lists.infradead.org, Linux ARM
 <linux-arm-kernel@lists.infradead.org>, linux-arm-msm
 <linux-arm-msm@vger.kernel.org>, linux-atm-general@lists.sourceforge.net,
 linux-block@vger.kernel.org, linux-can@vger.kernel.org,
 linux-cifs@vger.kernel.org, "open list:HARDWARE RANDOM NUMBER GENERATOR
 CORE\"         <linux-crypto@vger.kernel.org>,
 linux-decnet-user@lists.sourceforge.net, linux-ext4@vger.kernel.org,
 linux-fbdev@vger.kernel.org, linux-geode@lists.infradead.org,
 linux-gpio@vger.kernel.org, linux-hams@vger.kernel.org,
 linux-hwmon@vger.kernel.org, linux-i3c@lists.infradead.org,
 linux-ide@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-input@vger.kernel.org, linux-integrity@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org,
 linux-mmc@vger.kernel.org, Linux Memory Management List
 <linux-mm@kvack.org>, linux-mtd@lists.infradead.org,
 linux-nfs@vger.kernel.org, linux-rdma@vger.kernel.org, Linux-Renesas
 <linux-renesas-soc@vger.kernel.org>, linux-scsi@vger.kernel.org,
 linux-sctp@vger.kernel.org, linux-security-module@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-usb@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-wireless
 <linux-wireless@vger.kernel.org>, Network Development
 <netdev@vger.kernel.org>, netfilter-devel@vger.kernel.org,
 nouveau@lists.freedesktop.org, op-tee@lists.trustedfirmware.org,
 oss-drivers@netronome.com, patches@opensource.cirrus.com,
 rds-devel@oss.oracle.com, reiserfs-devel@vger.kernel.org,
 samba-technical@lists.samba.org, selinux@vger.kernel.org,
 target-devel@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 usb-storage@lists.one-eyed-alien.net,
 virtualization@lists.linux-foundation.org, wcn36xx@lists.infradead.org,
 "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
 xen-devel@lists.xenproject.org, linux-hardening@vger.kernel.org, Nathan
 Chancellor <natechancellor@gmail.com>, Miguel Ojeda <ojeda@kernel.org>, Joe
 Perches <joe@perches.com>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
Message-ID: <20201123174648.6a22575b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <CAKwvOdntVfXj2WRR5n6Kw7BfG7FdKpTeHeh5nPu5AzwVMhOHTg@mail.gmail.com>
References: <cover.1605896059.git.gustavoars@kernel.org>
	<20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	<202011201129.B13FDB3C@keescook>
	<20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	<202011220816.8B6591A@keescook>
	<CAKwvOdntVfXj2WRR5n6Kw7BfG7FdKpTeHeh5nPu5AzwVMhOHTg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: kuba@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=UW7qkn00;       spf=pass
 (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=kuba@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, 23 Nov 2020 17:32:51 -0800 Nick Desaulniers wrote:
> On Sun, Nov 22, 2020 at 8:17 AM Kees Cook <keescook@chromium.org> wrote:
> > On Fri, Nov 20, 2020 at 11:51:42AM -0800, Jakub Kicinski wrote: =20
> > > If none of the 140 patches here fix a real bug, and there is no chang=
e
> > > to machine code then it sounds to me like a W=3D2 kind of a warning. =
=20
> >
> > FWIW, this series has found at least one bug so far:
> > https://lore.kernel.org/lkml/CAFCwf11izHF=3Dg1mGry1fE5kvFFFrxzhPSM6qKAO=
8gxSp=3DKr_CQ@mail.gmail.com/ =20
>=20
> So looks like the bulk of these are:
> switch (x) {
>   case 0:
>     ++x;
>   default:
>     break;
> }
>=20
> I have a patch that fixes those up for clang:
> https://reviews.llvm.org/D91895

=F0=9F=98=8D

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/20201123174648.6a22575b%40kicinski-f=
edora-pc1c0hjn.dhcp.thefacebook.com.
