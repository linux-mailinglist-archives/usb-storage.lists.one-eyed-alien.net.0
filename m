Return-Path: <usb-storage+bncBDIZTUWNWICRBK46TH7AKGQEZV2QLCY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lf1-x148.google.com (mail-lf1-x148.google.com [IPv6:2a00:1450:4864:20::148])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D302CA539
	for <lists+usb-storage@lfdr.de>; Tue,  1 Dec 2020 15:11:56 +0100 (CET)
Received: by mail-lf1-x148.google.com with SMTP id z19sf1128085lfg.11
        for <lists+usb-storage@lfdr.de>; Tue, 01 Dec 2020 06:11:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606831916; cv=pass;
        d=google.com; s=arc-20160816;
        b=rdTD7cOXlnIawkwSZy/e1Z6NYTJq6bi44CtNmH4WdfRPDD7rQnF/VkjtWYQsbM4Efc
         MTJEG+7PC0qk4iQs1YZZuzZiACTrM3BL4BA3+IO1YK//SlZcTr7kLqMcXkaMIpBdcJvL
         X5zEcuJwGE4zGY+bpSsWTWtJEWbj7KDvPpp4j7sAezRau8b8zpnl18JcZVneAjKLL0ee
         C3SoKVwoyXa0egSmqWqEsV4w7xIAAmAvFKYIrbECfRB/QwKYCfYSRQcx7MlsHuz2UN98
         r8Bnz2t680xp8a3nA7Kszks/laefKtnKnz+VP7q2BNxP+ZMI8z8/B48EisLFJyeacvmU
         vrfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=BgQn10cWjf7xrlfHtiqSWa5Tp8EDH2dQN4DboMhsgcQ=;
        b=altOOyodomYn6nlwsnOTkHAvjt/89gD0RWSUOqVw2hyfglvLmGXTafa7MxTNQWJnAA
         0B0hmbIAhxv8Ce/VZ69WQ69B5AreN+xGlq86QzqK3nlTRZRY/sHVaHgfbdRVFtk1byz0
         dzsGP/1ZkOZt8x+SOf+86ZDTS/14QY2+8p9wj6xKaF3tvZFnLya6ZRr1lq1rTl0RK8o8
         ehoaltoVbkQQrMUxUNdwCUXGtw2TR4FVYDdsrikeNkaPmwxQjEWFdsrUByKLu79/5enk
         pl6/iILrS/IAyQ9Sbg1XWGpEbYqS+ZFe+0OVxk//FgakuyrpfjV+iPnctBWSM5t7Tj2h
         7sdQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=Q8Pq03hi;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BgQn10cWjf7xrlfHtiqSWa5Tp8EDH2dQN4DboMhsgcQ=;
        b=Id16Z2DdsOztRBAn+40TXbC5BPgW2YgTCJXvov2N9y71bHNrH92qA8daBdawulmLK9
         8RESSIOfBjC6BLcOsyVSqYAIBDIs27tFnuTo+wC8QPrRdeh8fH6Zfm40HbxZ0qimGCUS
         n6jDKLNSVzaH/rmsDQnxPazF7BKX4GWd6xylA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BgQn10cWjf7xrlfHtiqSWa5Tp8EDH2dQN4DboMhsgcQ=;
        b=l7LydFbKEmxJJYTV/UqPg6ztJWBfpM5/wh0rjP1sh1CqSsjfF2r/Amuh6oRCM7GZPV
         ioQnsF0EJs2UlO9VCtViWw17ZvRAtHsaAm0Bp4/O7RYczw216ROb8WXg9dvgxikigT3Y
         QfMb9nPQbrKaZvFIl4kK46uIBHsYhQxmW0BCjJVE2+Z1P3laNJSiyrgIeKDahOW81v2i
         bYQHsMISdmqN5lxu9FiF213nmXCpXuUUrMGjjIqihmC7m+go90llPsGns9MR25awsQb1
         wEXPKb1E2bXoP6Z6BTjd3+WVp6NWI8EvHHW/S9i0+a1wt+9wVhuvKm8+4PG4iHAOOApp
         Y/Yw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531kdKmzvc/bIgGjRUIeuXLwfl4izDkxEt1qYNzZ5WzoNIgN3L+i
	tb0E5qsHB9ATvsL57XIf+8DcjA==
X-Google-Smtp-Source: ABdhPJzDUMC5dlZk7Y+UyzlY7+bxq9jgkb8mlEM+S4TBUbxqcWM0FkHxfZaF9BGvI1F578HVWvHZmw==
X-Received: by 2002:a2e:9bd1:: with SMTP id w17mr1377905ljj.339.1606831915835;
        Tue, 01 Dec 2020 06:11:55 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac2:58ed:: with SMTP id v13ls1633403lfo.2.gmail; Tue, 01 Dec
 2020 06:11:54 -0800 (PST)
X-Received: by 2002:ac2:5bd1:: with SMTP id u17mr1290459lfn.171.1606831914127;
        Tue, 01 Dec 2020 06:11:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606831914; cv=none;
        d=google.com; s=arc-20160816;
        b=AkV8MLz5R0uUvFj7AM9zgzZU/o/raX1ceDap9BTJBf69M1nzZdTkK4VMBnY/vvHiWI
         mnPi44SuvDu1IV62MNZfrAytxL/cSN95vFfENI8HIZFAojw2Bkc8tNl1ZTpa3qMHXW4r
         4LyOR7+BbyhSmR6Z1K9gUW/70rGDDxJXhDdKJVc16P44UCt03ddH0uInMtweM2ZZW/5N
         32FUmZwZxOQugvsMvc6ggrNb0p68YgyxCZ2SDIRDKGC7tR1yxB7lpxzcT1GpBp0RaB7D
         5oJdx4Ir0zN84L+IsaVLAD27xBb5IZiwt14HBQ5EjlIVR2BnPWjHHHcQPK8toNfK5x/E
         lKnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=CVxJrJvszPiYRoVvo8QMoaANjq0rT1w3VAIVepGqitY=;
        b=lnka4XStE330aNQ8OBY8vrT61J2K+3qws/C8xMkmjIa4ZWYIglDsxuCj7XTfxwNMNk
         2jvdlOPCg4izQUCtwI0QqxUuRjyBjJujOuRQeoSaLW69vlHuwUk/Z8rq7aQ/l7AB3zwz
         MxFeUw/K4dmR31s2nVS53CydzfjAKQN5gFk2IQAIUp2wi2CLT5QsfhbcwWTASfHnGvot
         WesG/pVlzGM7RlIbzA7Wgh+nJiMfn1xMPVIt+oModWvt8GAdYlr+MI+PdulFFNqjtQJG
         dexiAAP3yxVfU5i6XfazaarNEvZkr5WCGPB3ZeM83zF3qqSOK5OIbosW9zdOrnt9sC5E
         5wHg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=Q8Pq03hi;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2130.oracle.com (aserp2130.oracle.com. [141.146.126.79])
        by mx.google.com with ESMTPS id p6si928935ljh.259.2020.12.01.06.11.53
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Dec 2020 06:11:54 -0800 (PST)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) client-ip=141.146.126.79;
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
	by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B1Dt8Jx186047;
	Tue, 1 Dec 2020 14:11:31 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by aserp2130.oracle.com with ESMTP id 353c2attky-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 01 Dec 2020 14:11:31 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B1Du5hA003823;
	Tue, 1 Dec 2020 14:09:31 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by aserp3020.oracle.com with ESMTP id 3540ey0nwv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 01 Dec 2020 14:09:31 +0000
Received: from aserp3020.oracle.com (aserp3020.oracle.com [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 0B1E8IaF039759;
	Tue, 1 Dec 2020 14:09:29 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by aserp3020.oracle.com with ESMTP id 3540ey0nvu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 01 Dec 2020 14:09:29 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0B1E9NOp018011;
	Tue, 1 Dec 2020 14:09:24 GMT
Received: from kadam (/102.36.221.92)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 01 Dec 2020 06:09:23 -0800
Date: Tue, 1 Dec 2020 17:08:49 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>, alsa-devel@alsa-project.org,
        linux-atm-general@lists.sourceforge.net,
        reiserfs-devel@vger.kernel.org, linux-iio@vger.kernel.org,
        linux-wireless <linux-wireless@vger.kernel.org>,
        linux-fbdev@vger.kernel.org,
        dri-devel <dri-devel@lists.freedesktop.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        linux-ide@vger.kernel.org, dm-devel@redhat.com,
        keyrings@vger.kernel.org, linux-mtd@lists.infradead.org,
        GR-everest-linux-l2@marvell.com, wcn36xx@lists.infradead.org,
        samba-technical@lists.samba.org, linux-i3c@lists.infradead.org,
        linux1394-devel@lists.sourceforge.net, linux-afs@lists.infradead.org,
        usb-storage@lists.one-eyed-alien.net, drbd-dev@tron.linbit.com,
        devel@driverdev.osuosl.org, linux-cifs@vger.kernel.org,
        rds-devel@oss.oracle.com, linux-scsi@vger.kernel.org,
        linux-rdma@vger.kernel.org, oss-drivers@netronome.com,
        bridge@lists.linux-foundation.org,
        linux-security-module@vger.kernel.org,
        amd-gfx list <amd-gfx@lists.freedesktop.org>,
        linux-stm32@st-md-mailman.stormreply.com, cluster-devel@redhat.com,
        linux-acpi@vger.kernel.org, coreteam@netfilter.org,
        intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org,
        Miguel Ojeda <ojeda@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
        linux-ext4@vger.kernel.org, linux-media@vger.kernel.org,
        linux-watchdog@vger.kernel.org, selinux@vger.kernel.org,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        intel-gfx@lists.freedesktop.org, linux-geode@lists.infradead.org,
        linux-can@vger.kernel.org, linux-block@vger.kernel.org,
        linux-gpio@vger.kernel.org, op-tee@lists.trustedfirmware.org,
        linux-mediatek@lists.infradead.org, xen-devel@lists.xenproject.org,
        nouveau@lists.freedesktop.org, linux-hams@vger.kernel.org,
        ceph-devel@vger.kernel.org, virtualization@lists.linux-foundation.org,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-hwmon@vger.kernel.org,
        "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
        linux-nfs@vger.kernel.org, GR-Linux-NIC-Dev@marvell.com,
        tipc-discussion@lists.sourceforge.net,
        Linux Memory Management List <linux-mm@kvack.org>,
        Network Development <netdev@vger.kernel.org>,
        linux-decnet-user@lists.sourceforge.net, linux-mmc@vger.kernel.org,
        "Gustavo A. R. Silva" <gustavoars@kernel.org>,
        Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
        linux-sctp@vger.kernel.org, linux-usb@vger.kernel.org,
        netfilter-devel@vger.kernel.org,
        "open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>,
        patches@opensource.cirrus.com, Joe Perches <joe@perches.com>,
        linux-integrity@vger.kernel.org, target-devel@vger.kernel.org,
        linux-hardening@vger.kernel.org
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
Message-ID: <20201201140849.GH2767@kadam>
References: <cover.1605896059.git.gustavoars@kernel.org>
 <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011201129.B13FDB3C@keescook>
 <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook>
 <CAKwvOdntVfXj2WRR5n6Kw7BfG7FdKpTeHeh5nPu5AzwVMhOHTg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdntVfXj2WRR5n6Kw7BfG7FdKpTeHeh5nPu5AzwVMhOHTg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9821 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 mlxlogscore=924 phishscore=0 malwarescore=0
 spamscore=0 adultscore=0 mlxscore=0 priorityscore=1501 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012010090
X-Original-Sender: dan.carpenter@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=Q8Pq03hi;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates
 141.146.126.79 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
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

On Mon, Nov 23, 2020 at 05:32:51PM -0800, Nick Desaulniers wrote:
> On Sun, Nov 22, 2020 at 8:17 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Fri, Nov 20, 2020 at 11:51:42AM -0800, Jakub Kicinski wrote:
> > > If none of the 140 patches here fix a real bug, and there is no change
> > > to machine code then it sounds to me like a W=2 kind of a warning.
> >
> > FWIW, this series has found at least one bug so far:
> > https://lore.kernel.org/lkml/CAFCwf11izHF=g1mGry1fE5kvFFFrxzhPSM6qKAO8gxSp=Kr_CQ@mail.gmail.com/
> 
> So looks like the bulk of these are:
> switch (x) {
>   case 0:
>     ++x;
>   default:
>     break;
> }

This should not generate a warning.

> 
> I have a patch that fixes those up for clang:
> https://reviews.llvm.org/D91895
> 
> There's 3 other cases that don't quite match between GCC and Clang I
> observe in the kernel:
> switch (x) {
>   case 0:
>     ++x;
>   default:
>     goto y;
> }
> y:;

This should generate a warning.

> 
> switch (x) {
>   case 0:
>     ++x;
>   default:
>     return;
> }

Warn for this.


> 
> switch (x) {
>   case 0:
>     ++x;
>   default:
>     ;
> }

Don't warn for this.

If adding a break statement changes the flow of the code then warn about
potentially missing break statements, but if it doesn't change anything
then don't warn about it.

regards,
dan carpenter

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20201201140849.GH2767%40kadam.
