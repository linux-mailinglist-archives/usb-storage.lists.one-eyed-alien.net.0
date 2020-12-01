Return-Path: <usb-storage+bncBDIZTUWNWICRBUM3TH7AKGQE23L7MHQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x445.google.com (mail-wr1-x445.google.com [IPv6:2a00:1450:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id B579B2CA4EE
	for <lists+usb-storage@lfdr.de>; Tue,  1 Dec 2020 15:06:10 +0100 (CET)
Received: by mail-wr1-x445.google.com with SMTP id x16sf1037539wrm.20
        for <lists+usb-storage@lfdr.de>; Tue, 01 Dec 2020 06:06:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606831570; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZBmi/+Pn7LKPjfZD+RszsNJepCTMoO7uj+LKLGMC8Nr1adU+0q9/U+tEX7yxqkWMq6
         OhUBVknPoB3oQRqSMl3SfsemmC7fc6YN9p0cAoHf+CUfdLzlrSz/PVwg4XiUHsGXB8PZ
         TDsyr0hprMq7l72o6AuHR1O0kc0rGzOnfW6K0DmdZOTvcQkKLDJBLURVVSuSF31coz92
         /A4Ih5qb826ccopYaCxQsZm+xTpYguq72Z+m6GCPyBgkdYZE329QGReZAk3C8Yyk1Fto
         J0ce/4wBC+Gp8IAdBOSdM6Dsefouok6Nt7d8iDwrahG8HGKOOPvvCw8c9peS5wtVRy8y
         ogFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=TWh+UbY+mVwqGqdfy08vSOoYgaf8dzl0ftwCjt+sfjU=;
        b=cB8O9yhUwk0fHm/QmKrlR6hEJmONDIRebGPEw4FCLdBRlqolGg8jVXX5IX2Sk1l89I
         bj6pBCvpgW1at5nVFb6bDJ8qqdeuB2Pje+C7o4GsXyjiiGsX7BuIMsaMWciDeCN7B84l
         kkZ/JKcCTXeWXXEEMrqbM4OYcGt7/gx2EADrhyKyLrxWh3rVb1DFx2/piTMcFn1OtFTG
         Nb4pefnxeAG9m8hw7GfaGix4GUg1nXQqQXXwk0QQXv6hEzdyV7Z+bTrAVMzP4F4Tkx21
         cFCBynQmnDp5hZ8vKCZ3y5n1bKFHuaVGbXYvv/iEvEl4ymwkmEZN/Ap2qC/DWGf5Jrr4
         OunA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=vLWTsjji;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TWh+UbY+mVwqGqdfy08vSOoYgaf8dzl0ftwCjt+sfjU=;
        b=EviwocqjEuG3VQDS16k+qAbS/6Y3HhcG5Q2F1F0nA8+LhcD3o3cYtPZn2rudj8e67e
         F0t6jyW9SH5PKJeZBnZ6DIWdWq8DLSedNLuGX9J834OFZ2v5/prq6IpgeocJepg2OPTe
         7ubxsByguhP6A/sC6PgWNv1JNnYQuocfZBSuw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TWh+UbY+mVwqGqdfy08vSOoYgaf8dzl0ftwCjt+sfjU=;
        b=I0bJ68yZ2kNZj8noDNXedGQXzdXDZKC34ug41LhEizTtV7dwrmZ1/8YGjcxxRkMZWC
         WCON7tSvTqBzKQCNzhQxAFELMtvWszHBiQRDOAGP2jnda2NMLfu0edi/mviXklxH7ESs
         SHnr/bcdFqZvk3WCz7nQLvnjzvNTVS7JF54DSXYjzUcbPlk9oyGd58Pga4Z84QgD/Pgc
         MTgjyjKf9Y7wjJELeEYM/RPhjlzdRcr09XrthT6eDXzOQzoy6I9r2Sy8sO+WkmfH0uX0
         Bdlf473BxMhqRb7aSe/0HLhBtnwrd6txlkhDtA4S1OCa8eVhlj925dCSuy+HAIc0/Ccp
         tXDw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533ysOEbgvrtRPZupFDq1peVoGG738jfmW6Nq0bMrMuiYQy7v8BM
	u9EUHnvW/6/AML+oFgHS1xobqw==
X-Google-Smtp-Source: ABdhPJyr7YhN4g2wFieBq/MsEY9o0f6QAzJaFeOHpJ97BIQqWALgNIKJIe3EvDFhGykjNGrQLPOGRA==
X-Received: by 2002:a1c:e042:: with SMTP id x63mr2908396wmg.68.1606831570394;
        Tue, 01 Dec 2020 06:06:10 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6000:145:: with SMTP id r5ls364783wrx.0.gmail; Tue, 01
 Dec 2020 06:06:09 -0800 (PST)
X-Received: by 2002:a5d:504f:: with SMTP id h15mr4015997wrt.402.1606831569119;
        Tue, 01 Dec 2020 06:06:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606831569; cv=none;
        d=google.com; s=arc-20160816;
        b=E4ECUygGjakBHg2/kWrXhP6pQ+xw/XOaz69D3ykd9z3TbQbqL3k4DCsO2AhB+V1VA1
         nGS6sw4doG9et7YrQjAn20gZhdqjmLxJJMNge6Q8/EkOn75RSTaYv6avkYc/Wy+IyGn8
         SwIgCZZYjqdDo8K83Lr540DG0dB0Oxl1FvJXvQkpVDHXkLm22ZQA/hIqZPHfNziUa2gb
         l+QqHbAMclxK2NTTHxo0l7iEwj4yx24IkkWPwuSaZHuACnRh0INhkWbtHUkZSFzxopw6
         +nIyvLmEZ36Kq1Fg3nYNjh8lCGexjA+8yho3STnDNN2nOQLk0+w0eGxiZyqltgqP2I4B
         1fTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=pTmh0fAx41hLIvYDyOekZfZD8/4rzzXxS/TqqdPExwg=;
        b=rO6uN2LE8+VeV4s+SYpSWR7/+YxjSG8xty3dXQq7ETTU4H8aFasBnFkHrxjaNx1WrI
         Rr3Ubik/FPs+WlVNQMovNB34h9acfoIQ47S+FbEmjRKULH4lRevzRJXMAaBZg4bBSMeI
         Y67MOQOXja9Wj2ii2+w3Fa4iS4TlWamxrF3ehQfy0FtJ5E8nDnmyW/jW1+daoMMUDKDX
         YcYjjgOw7p29Q7sJ2XJpWSfgtIPA/bmaEI4n1H6KRkSoTyXO4UTI4bd69XJTrBeEbqKE
         K/0LPWiCuAiE90NjzUHfVGTXGfrQ4grN1Z6uXPuHXymEnIDQGRO8ygJbRFJs9gtpg+Nm
         KTlw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=vLWTsjji;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by mx.google.com with ESMTPS id h18si1687353wrw.554.2020.12.01.06.06.08
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Dec 2020 06:06:09 -0800 (PST)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B1DstBi119028;
	Tue, 1 Dec 2020 14:05:43 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by aserp2120.oracle.com with ESMTP id 353egkjkku-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 01 Dec 2020 14:05:42 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B1Du5XW003807;
	Tue, 1 Dec 2020 14:05:42 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by aserp3020.oracle.com with ESMTP id 3540ey0hqs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 01 Dec 2020 14:05:42 +0000
Received: from aserp3020.oracle.com (aserp3020.oracle.com [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 0B1E1twO021849;
	Tue, 1 Dec 2020 14:05:41 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by aserp3020.oracle.com with ESMTP id 3540ey0hp9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 01 Dec 2020 14:05:40 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0B1E5MSD015816;
	Tue, 1 Dec 2020 14:05:23 GMT
Received: from kadam (/102.36.221.92)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 01 Dec 2020 06:05:21 -0800
Date: Tue, 1 Dec 2020 17:04:49 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Kees Cook <keescook@chromium.org>
Cc: Jakub Kicinski <kuba@kernel.org>, alsa-devel@alsa-project.org,
        linux-atm-general@lists.sourceforge.net,
        reiserfs-devel@vger.kernel.org, linux-iio@vger.kernel.org,
        linux-wireless@vger.kernel.org, linux-fbdev@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        Nathan Chancellor <natechancellor@gmail.com>,
        linux-ide@vger.kernel.org, dm-devel@redhat.com,
        keyrings@vger.kernel.org, linux-mtd@lists.infradead.org,
        GR-everest-linux-l2@marvell.com, wcn36xx@lists.infradead.org,
        samba-technical@lists.samba.org, linux-i3c@lists.infradead.org,
        linux1394-devel@lists.sourceforge.net, linux-afs@lists.infradead.org,
        usb-storage@lists.one-eyed-alien.net, drbd-dev@tron.linbit.com,
        devel@driverdev.osuosl.org, linux-cifs@vger.kernel.org,
        rds-devel@oss.oracle.com, Nick Desaulniers <ndesaulniers@google.com>,
        linux-scsi@vger.kernel.org, linux-rdma@vger.kernel.org,
        oss-drivers@netronome.com, bridge@lists.linux-foundation.org,
        linux-security-module@vger.kernel.org, amd-gfx@lists.freedesktop.org,
        linux-stm32@st-md-mailman.stormreply.com, cluster-devel@redhat.com,
        linux-acpi@vger.kernel.org, coreteam@netfilter.org,
        intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org,
        Miguel Ojeda <ojeda@kernel.org>, tipc-discussion@lists.sourceforge.net,
        linux-ext4@vger.kernel.org, linux-media@vger.kernel.org,
        linux-watchdog@vger.kernel.org, selinux@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
        linux-geode@lists.infradead.org, linux-can@vger.kernel.org,
        linux-block@vger.kernel.org, linux-gpio@vger.kernel.org,
        op-tee@lists.trustedfirmware.org, linux-mediatek@lists.infradead.org,
        xen-devel@lists.xenproject.org, nouveau@lists.freedesktop.org,
        linux-hams@vger.kernel.org, ceph-devel@vger.kernel.org,
        virtualization@lists.linux-foundation.org,
        linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
        x86@kernel.org, linux-nfs@vger.kernel.org,
        GR-Linux-NIC-Dev@marvell.com, linux-mm@kvack.org,
        netdev@vger.kernel.org, linux-decnet-user@lists.sourceforge.net,
        linux-mmc@vger.kernel.org,
        "Gustavo A. R. Silva" <gustavoars@kernel.org>,
        linux-renesas-soc@vger.kernel.org, linux-sctp@vger.kernel.org,
        linux-usb@vger.kernel.org, netfilter-devel@vger.kernel.org,
        linux-crypto@vger.kernel.org, patches@opensource.cirrus.com,
        Joe Perches <joe@perches.com>, linux-integrity@vger.kernel.org,
        target-devel@vger.kernel.org, linux-hardening@vger.kernel.org
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
Message-ID: <20201201140449.GG2767@kadam>
References: <cover.1605896059.git.gustavoars@kernel.org>
 <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011201129.B13FDB3C@keescook>
 <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202011220816.8B6591A@keescook>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9821 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 bulkscore=0 suspectscore=0
 phishscore=0 mlxlogscore=944 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 impostorscore=0 clxscore=1011 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012010090
X-Original-Sender: dan.carpenter@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=vLWTsjji;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates
 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
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

On Sun, Nov 22, 2020 at 08:17:03AM -0800, Kees Cook wrote:
> On Fri, Nov 20, 2020 at 11:51:42AM -0800, Jakub Kicinski wrote:
> > On Fri, 20 Nov 2020 11:30:40 -0800 Kees Cook wrote:
> > > On Fri, Nov 20, 2020 at 10:53:44AM -0800, Jakub Kicinski wrote:
> > > > On Fri, 20 Nov 2020 12:21:39 -0600 Gustavo A. R. Silva wrote:  
> > > > > This series aims to fix almost all remaining fall-through warnings in
> > > > > order to enable -Wimplicit-fallthrough for Clang.
> > > > > 
> > > > > In preparation to enable -Wimplicit-fallthrough for Clang, explicitly
> > > > > add multiple break/goto/return/fallthrough statements instead of just
> > > > > letting the code fall through to the next case.
> > > > > 
> > > > > Notice that in order to enable -Wimplicit-fallthrough for Clang, this
> > > > > change[1] is meant to be reverted at some point. So, this patch helps
> > > > > to move in that direction.
> > > > > 
> > > > > Something important to mention is that there is currently a discrepancy
> > > > > between GCC and Clang when dealing with switch fall-through to empty case
> > > > > statements or to cases that only contain a break/continue/return
> > > > > statement[2][3][4].  
> > > > 
> > > > Are we sure we want to make this change? Was it discussed before?
> > > > 
> > > > Are there any bugs Clangs puritanical definition of fallthrough helped
> > > > find?
> > > > 
> > > > IMVHO compiler warnings are supposed to warn about issues that could
> > > > be bugs. Falling through to default: break; can hardly be a bug?!  
> > > 
> > > It's certainly a place where the intent is not always clear. I think
> > > this makes all the cases unambiguous, and doesn't impact the machine
> > > code, since the compiler will happily optimize away any behavioral
> > > redundancy.
> > 
> > If none of the 140 patches here fix a real bug, and there is no change
> > to machine code then it sounds to me like a W=2 kind of a warning.
> 
> FWIW, this series has found at least one bug so far:
> https://lore.kernel.org/lkml/CAFCwf11izHF=g1mGry1fE5kvFFFrxzhPSM6qKAO8gxSp=Kr_CQ@mail.gmail.com/

This is a fallthrough to a return and not to a break.  That should
trigger a warning.  The fallthrough to a break should not generate a
warning.

The bug we're trying to fix is "missing break statement" but if the
result of the bug is "we hit a break statement" then now we're just
talking about style.  GCC should limit itself to warning about
potentially buggy code.

regards,
dan carpenter

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20201201140449.GG2767%40kadam.
