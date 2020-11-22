Return-Path: <usb-storage+bncBDXO746SYYBRBWMD5P6QKGQEEOMSWWI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x147.google.com (mail-il1-x147.google.com [IPv6:2607:f8b0:4864:20::147])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6902BC8D3
	for <lists+usb-storage@lfdr.de>; Sun, 22 Nov 2020 20:54:02 +0100 (CET)
Received: by mail-il1-x147.google.com with SMTP id g2sf12138342ilb.23
        for <lists+usb-storage@lfdr.de>; Sun, 22 Nov 2020 11:54:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606074841; cv=pass;
        d=google.com; s=arc-20160816;
        b=uYIRv14++D4BL/Rr9Svre6XGAp0vk5iwVcw64sbH/zSfVxRM9wQ3ItHOWe4gHx/+Ra
         ov+6c0Q2GjUHiEjC2rveHId2T2OI/9d3ACJDqh3D8J4i1lIsICas6Y3cP9bEmUalD0zL
         OBxGygaJ6ttwxLZJqIUZTvxRRsWpSLexqhxFDyAxKk3fmKwqRjI9DrvqUDw5/7wo6NST
         T1AvU45sb534KXIxtT1DQOi1MSMipgED5Hvz2/c+pYgExjOMV7Cix9qqB9K+2yMaZdsh
         K/ueM1ShPpIBxwdDLvDOayISO9Rr9/pE1fkuSVMhf80p7/K3pdnW2T/tL6jZQE81ERaT
         q33A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=CIbog6du9i1y3dwtZR/2AmlWetYA/P2RuhVHtdc/bRI=;
        b=xvKKpLDv1c+/AvlfGATfKEnjJjpeoVAb8IKHb+8IvBwi9iOea0c7kxv74Lh2VGrEUm
         rnv4J+GHGAWvAs6QaDmMhhCYaiRDbuiL8/v0Xza2Ua8yhsXvVmXkO+tOQAS2voWLnKNZ
         OXjaejUAj3ytKHGLdfseuOZ2Gev6ihwHizoVSRYA7i7n385P1U0bPVXV9KoEr26E386v
         BT979iSHFE6foU5Ez9AaBS57WlmGOvgMqYcYgyi3uP98fe2ZMMnTMMcNQiHePinpeNDb
         Ig5sX3A6S8SXEOs7Mr3/+kJU9fSprliZpnyqPLG7uNJBset/QG36tb7AIDgROeuFY/Gh
         Hwfw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=Xy60wiIz;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=Xy60wiIz;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CIbog6du9i1y3dwtZR/2AmlWetYA/P2RuhVHtdc/bRI=;
        b=jDAIhIrGan2xhdxGKlvyXINuAjHGq+qL9v0xJCVJo7+xJu3nkX3/wnmzwiwMlOAz1n
         7YMJjhx9iVBy20+wE+Y69o0iLnx4FRov2anaBUtf/gEvIPuNSPCe+u4Qqy1fzkY7PBSI
         6MAf/FpDJdJaLhVFxt3QSexz3Ou918ibwl/xo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CIbog6du9i1y3dwtZR/2AmlWetYA/P2RuhVHtdc/bRI=;
        b=sW8vNOSdzg5uDpPZdOg9cniTt6Xvap/BJYAsG4yzLHXzCwhZ0eATJIGafm3oajOTiW
         b5d+CWxz1qkHilT74hNd0EQm6ET2/jpH9rOKzNDUS/fFpKChUs8DL+7L1d+DqVX/YMU5
         fhoXYwmQgWlf6Sa61GYZOU5Nf/l2C508cNrcKK6yaZoSsd6vcvBvl/sJSZ0sAhzCOXMq
         g6T1dclM9MOaXILUq666mcUlJnoh6R2GEoYTWZZehDky1kLVpbrB2K6eU9itcBqiZYeM
         d+2BGMp77rmEDnK0Ij8AeSzn00/EXfdsKyTj1ya/QSwIObS16cUm7Vo/QmYt50IXjvwj
         v0XA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533lQ/T/u7Yv8BuDct6ODFVuAiPzMt7Hg2lgjctNlirzmDE+rYJ4
	zB2gQ+TxJnhIhuOy8JwvMZc9pA==
X-Google-Smtp-Source: ABdhPJysaKy1G63CvuDh5BoxJIJjgM3CoIuNeIplvliCMo3/VjlJCep4G67lJcjHZnkAFRZ/g2N4fA==
X-Received: by 2002:a05:6602:2d09:: with SMTP id c9mr32351117iow.55.1606074841642;
        Sun, 22 Nov 2020 11:54:01 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5e:9e46:: with SMTP id j6ls2020342ioq.8.gmail; Sun, 22 Nov
 2020 11:54:01 -0800 (PST)
X-Received: by 2002:a05:6602:1244:: with SMTP id o4mr12838803iou.12.1606074841174;
        Sun, 22 Nov 2020 11:54:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606074841; cv=none;
        d=google.com; s=arc-20160816;
        b=ff0Fufiwoqxh+MxZLDjislSXizd6M83wtzcR9SU86LwLWC+xKnCFCCNWRXCIb4OZGq
         NQ+OUZGIRyMo7/aeLjfiZao2QChQ3DXben9KiJgzRqCspNmsdSlb3q1zzsx30zBAMiCh
         UVDJ0aZzlWaBGsETm4qG6Jy4hl5QCbHVxtQUbZ4D+cD5kl9TxjBnsCfUQz2tQCbNQo4O
         TExwrH+mLuTiykFhPCpeNXAZ17VlyduwzAtLDC97iiZurYKf6K8hoL88mPfSe1WOdE41
         qEMb7vAy1lWfZFneX/ew1sUGQp160kgDUALjKZ9zdwFZ5Era7hTIfiiIvytOSB5Culj4
         wusA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature
         :dkim-signature;
        bh=5mZ+pIQ2TR/1deq2J2HzMVCoopPyew9P7ySIfcnjerI=;
        b=Kv5M61ku8KLPhgbOEzcH4+CpctrIth8scfZBvhQHMwZukliCDGRr1mm5m14GZQKFnj
         ep72rJCpf3//oMc1SoYjxiCEH9J3BlvSC1yvS6auEnViMJ9g8APlwIL7ggA/DGEfOXJ8
         3HmjwKo8UnsmDIr9eDnLzXNLGIeyB4XRaoIVrENTikyoWtBqUKoesFFKiDW9VDXiygKF
         jxGgZ9Nrx1e4iyOvvPVx+yh7sdJr1j0YTfOB0SQdEnEVNMVjMykx+ZDWFFc903mGbm11
         7PlSDhvrissxCLYZPYmeLmg0IisSxfLoESntgROKkOQ7Y59+DrY7TvA58CBkcwqG5lgP
         e4/g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=Xy60wiIz;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=Xy60wiIz;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com. [2607:fcd0:100:8a00::2])
        by mx.google.com with ESMTPS id h1si2621188iol.85.2020.11.22.11.54.01
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 22 Nov 2020 11:54:01 -0800 (PST)
Received-SPF: pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) client-ip=2607:fcd0:100:8a00::2;
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id 5AE091280408;
	Sun, 22 Nov 2020 11:53:59 -0800 (PST)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
	by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KaMwHtHCHbnw; Sun, 22 Nov 2020 11:53:59 -0800 (PST)
Received: from jarvis.int.hansenpartnership.com (unknown [IPv6:2601:600:8280:66d1::527])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id D0B171280404;
	Sun, 22 Nov 2020 11:53:55 -0800 (PST)
Message-ID: <dbd2cb703ed9eefa7dde9281ea26ab0f7acc8afe.camel@HansenPartnership.com>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Joe Perches <joe@perches.com>, Kees Cook <keescook@chromium.org>, Jakub
	Kicinski <kuba@kernel.org>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
 linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org, 
 amd-gfx@lists.freedesktop.org, bridge@lists.linux-foundation.org, 
 ceph-devel@vger.kernel.org, cluster-devel@redhat.com,
 coreteam@netfilter.org,  devel@driverdev.osuosl.org, dm-devel@redhat.com,
 drbd-dev@lists.linbit.com,  dri-devel@lists.freedesktop.org,
 GR-everest-linux-l2@marvell.com,  GR-Linux-NIC-Dev@marvell.com,
 intel-gfx@lists.freedesktop.org,  intel-wired-lan@lists.osuosl.org,
 keyrings@vger.kernel.org,  linux1394-devel@lists.sourceforge.net,
 linux-acpi@vger.kernel.org,  linux-afs@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,  linux-arm-msm@vger.kernel.org,
 linux-atm-general@lists.sourceforge.net,  linux-block@vger.kernel.org,
 linux-can@vger.kernel.org,  linux-cifs@vger.kernel.org,
 linux-crypto@vger.kernel.org,  linux-decnet-user@lists.sourceforge.net,
 linux-ext4@vger.kernel.org,  linux-fbdev@vger.kernel.org,
 linux-geode@lists.infradead.org,  linux-gpio@vger.kernel.org,
 linux-hams@vger.kernel.org,  linux-hwmon@vger.kernel.org,
 linux-i3c@lists.infradead.org,  linux-ide@vger.kernel.org,
 linux-iio@vger.kernel.org,  linux-input@vger.kernel.org,
 linux-integrity@vger.kernel.org,  linux-mediatek@lists.infradead.org,
 linux-media@vger.kernel.org,  linux-mmc@vger.kernel.org,
 linux-mm@kvack.org, linux-mtd@lists.infradead.org, 
 linux-nfs@vger.kernel.org, linux-rdma@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, linux-scsi@vger.kernel.org, 
 linux-sctp@vger.kernel.org, linux-security-module@vger.kernel.org, 
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
 linux-hardening@vger.kernel.org,  Nick Desaulniers
 <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>,
 Miguel Ojeda <ojeda@kernel.org>
Date: Sun, 22 Nov 2020 11:53:55 -0800
In-Reply-To: <d8d1e9add08cdd4158405e77762d4946037208f8.camel@perches.com>
References: <cover.1605896059.git.gustavoars@kernel.org>
	 <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	 <202011201129.B13FDB3C@keescook>
	 <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	 <202011220816.8B6591A@keescook>
	 <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
	 <ca071decb87cc7e905411423c05a48f9fd2f58d7.camel@perches.com>
	 <0147972a72bc13f3629de8a32dee6f1f308994b5.camel@HansenPartnership.com>
	 <d8d1e9add08cdd4158405e77762d4946037208f8.camel@perches.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4
MIME-Version: 1.0
X-Original-Sender: James.Bottomley@hansenpartnership.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@hansenpartnership.com header.s=20151216 header.b=Xy60wiIz;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216
 header.b=Xy60wiIz;       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com
 designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
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

On Sun, 2020-11-22 at 11:22 -0800, Joe Perches wrote:
> On Sun, 2020-11-22 at 11:12 -0800, James Bottomley wrote:
> > On Sun, 2020-11-22 at 10:25 -0800, Joe Perches wrote:
> > > On Sun, 2020-11-22 at 10:21 -0800, James Bottomley wrote:
> > > > Please tell me our reward for all this effort isn't a single
> > > > missing error print.
> > > 
> > > There were quite literally dozens of logical defects found
> > > by the fallthrough additions.  Very few were logging only.
> > 
> > So can you give us the best examples (or indeed all of them if
> > someone is keeping score)?  hopefully this isn't a US election
> > situation ...
> 
> Gustavo?  Are you running for congress now?
> 
> https://lwn.net/Articles/794944/

That's 21 reported fixes of which about 50% seem to produce no change
in code behaviour at all, a quarter seem to have no user visible effect
with the remaining quarter producing unexpected errors on obscure
configuration parameters, which is why no-one really noticed them
before.

James


-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/dbd2cb703ed9eefa7dde9281ea26ab0f7acc8afe.camel%40HansenPartnership.com.
