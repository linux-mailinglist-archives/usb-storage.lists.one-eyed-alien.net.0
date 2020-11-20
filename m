Return-Path: <usb-storage+bncBAABBYFF4D6QKGQEUJDD5MI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x345.google.com (mail-ot1-x345.google.com [IPv6:2607:f8b0:4864:20::345])
	by mail.lfdr.de (Postfix) with ESMTPS id 962242BB4B8
	for <lists+usb-storage@lfdr.de>; Fri, 20 Nov 2020 20:02:57 +0100 (CET)
Received: by mail-ot1-x345.google.com with SMTP id h25sf991263otm.9
        for <lists+usb-storage@lfdr.de>; Fri, 20 Nov 2020 11:02:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605898976; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y0ii1l16P5enKQ8BEfepNyCu8TQGIWHU92mZjQYItH+ycxuJ+nHhm8KgPIciWysxYb
         +MsybNIQ5SojL2Q2AYleiVSlTATwKNfYgauZCsknpzAlFyLyqYqpXqjijfMX4ITGMd+6
         SvJDu0/3fkjRGn73O1IYYr112HfTLFmiwgWsgu89Ow1tLxRZUChNNFa2GpDxRL02PN+D
         nKDhJxFn2eWj32Pf+ZwPSMFTn00cSPYQTxoc4J6rcBVQvcfJm6XgR4umhsz2ZPKksejY
         MqgTrIYnV+FIs7/IGNAmztTn+h6F1nBYdItCF64ySAxLypuDVA2csnQAQYM8lq3RhkQG
         OeoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=0oEDl4QS1BzxZsQzKO+CtgV6tPM51nPPQfBEprUJ8hQ=;
        b=Sb3JcebhduE3ZCgr37G/yFYo8WQEPlZWNkIg6iRMwU+q9QT7yR4zUHMMHjxTAjxv9j
         SEAdhI+IuToGW3sJIfkjVmGyKr/oDZ10iIsG+k1vGrsB5YKKwoEvnSxiPI/l5Oz7kojQ
         ZWivYLGP5Lw7XH67ckhraIRL9JVbWJp8tGspMmOkugLsAE5R0cDTJjy5G0VIMSJM0eIh
         RorQ3zJfqA248HaQARjRz3IUJp3R0HifuwfvJZvWA1cr4NlZ3cxZe76jELIK89khokUV
         cHEO7Ak+c647KngQqLGDxrZw8gw3UAT8ba32b8amrIRUCZIWLDs9DTnp5DsqkfdMw0w7
         DFrg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=y6BwGzsU;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0oEDl4QS1BzxZsQzKO+CtgV6tPM51nPPQfBEprUJ8hQ=;
        b=W6p+QXv0BjUoQLlFKB1Lt8e8vKjBL9lGie3gNgz1exT98+gPAJ3qbFrE1WBXTeW/cz
         jaYUE2lTYyiHrMCEF9XYz1Dz2AfAQCmHZyAz8G9Vbcbg4g9qWVptxEQqb4DsiPkjVveN
         FdJ0CxPMV68J2k+TeitZy0IJ/Ap7lTBfdkRZo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0oEDl4QS1BzxZsQzKO+CtgV6tPM51nPPQfBEprUJ8hQ=;
        b=ouNA1i8OZsLYmpVmzTH3A+HCF+b75YnANiAwKUfX4RGUnIbFOR9iJxsoXTOvsExyzG
         ccDAfQtr6hN3i/z8QpTgiXZCuWIVMpxW2bGQUwQI4zAD3oa52ked2VJ7mKSFSu8DJcGl
         w7ULmDRJ4M5YJS8oaV2fqz8DXa+X9XnystI/tdVLAZkbW65rxdE7+aRKg+dVpIN5TFmm
         OcpzV++yD0bwiio4Au/8EyNBZjwZQX7416oxfAS0slY1aNN/QtsGAYlxRSfqzG037IB4
         lJkg/TMIHAPdT/IxLQhUiZKmYMrGCDCVB15bKq2pN+qCUpbV4zkX+hdl0OSLjtSM2l+w
         wrQQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM5339XnQnly91vdJDxyLXj2UIqwW1/K0pQkRi7gL57cJmj1jc9P5O
	nEBZ3Sp/+qLWfpRw/04sAZfOTQ==
X-Google-Smtp-Source: ABdhPJyH651D+z/XmkxHp1TylChH9DL1Fue6gl4N2/TGaLAEBUpfFOrmyECk76Jma4/9z/LMuzwMzw==
X-Received: by 2002:a05:6808:60a:: with SMTP id y10mr7566969oih.159.1605898976558;
        Fri, 20 Nov 2020 11:02:56 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aca:b784:: with SMTP id h126ls1819427oif.3.gmail; Fri, 20
 Nov 2020 11:02:56 -0800 (PST)
X-Received: by 2002:aca:ed82:: with SMTP id l124mr7227942oih.67.1605898976310;
        Fri, 20 Nov 2020 11:02:56 -0800 (PST)
Received: by 2002:a54:4191:0:b029:dd:8465:4abf with SMTP id 17-20020a5441910000b02900dd84654abfmsoiy;
        Fri, 20 Nov 2020 10:53:50 -0800 (PST)
X-Received: by 2002:aa7:854d:0:b029:197:9168:80fb with SMTP id y13-20020aa7854d0000b0290197916880fbmr11956961pfn.38.1605898429970;
        Fri, 20 Nov 2020 10:53:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605898429; cv=none;
        d=google.com; s=arc-20160816;
        b=CtB3lXPI7o07fw/YsZXj0NV6ByBY2KI8w1IhmcEXk2vYfibbcM1VRw/ygIlBU+q1PQ
         oSjij/huBN0NB3Oxqy0MUBXSwHeQLAJiEMyGeN25VQ9+BfJ/VLYTm4hcvKITY6bfwG6l
         lKjUmL6iu1h+YkCRHRPBJrc6IHC1NVgGUIwOxi8f3Wy9tqTd0g631acqcXiEzblXC5Qp
         wBFXDY99QVxVUVUUsyW4WxYecgIjP3TJqvHr6VQu1dX8R/nSp+7YNHDO7r9c4+nxg+js
         LCNZZ5QRIMnN/SPkFbGFVYOOpOEF+rXX9x9/294KFF1toU7eJeR0W2BA0Mf99ONv0TMs
         CGtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=FukM/9yMnsGBAIDOCGCijBAXraWr7dNZVwEVLkgzlBI=;
        b=I7ye6j1UvI8kAdi3c12kzn5ZQOl9aTUB+0nmEZ4ifp0HjjJS7bQ/n3ZDeqnjrAfTHm
         J3iLH/VzwUoorjn+BJGM+EkF3y6qyuK5DeJ90HkOyBIXzg6cCDRAwDlXbqFJyL2KBfBT
         V+Kfeo1JkipZajH8p32QIbXbu8Tc3p2XWcVbjVZVkWecfrIG+Llu+WJX5F8CVev3+osO
         LPb9Y1Rv7oY3AbKKOmmgVH6LazW8TcIeuEVzO6OVFEO9JY670eU9gmmLObv89czO4eLm
         O3M6DL96xHkweIUdwMMwSizzlPdRbjuUZQqUqhm1J+SQh9Vz4mYuXKkyUV3d0bxr9gOo
         51FQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=y6BwGzsU;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id j15si3494586pgg.461.2020.11.20.10.53.49
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Nov 2020 10:53:49 -0800 (PST)
Received-SPF: pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown [163.114.132.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D19712242B;
	Fri, 20 Nov 2020 18:53:45 +0000 (UTC)
Date: Fri, 20 Nov 2020 10:53:44 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
 amd-gfx@lists.freedesktop.org, bridge@lists.linux-foundation.org,
 ceph-devel@vger.kernel.org, cluster-devel@redhat.com,
 coreteam@netfilter.org, devel@driverdev.osuosl.org, dm-devel@redhat.com,
 drbd-dev@lists.linbit.com, dri-devel@lists.freedesktop.org,
 GR-everest-linux-l2@marvell.com, GR-Linux-NIC-Dev@marvell.com,
 intel-gfx@lists.freedesktop.org, intel-wired-lan@lists.osuosl.org,
 keyrings@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 linux-acpi@vger.kernel.org, linux-afs@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-atm-general@lists.sourceforge.net, linux-block@vger.kernel.org,
 linux-can@vger.kernel.org, linux-cifs@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-decnet-user@lists.sourceforge.net,
 linux-ext4@vger.kernel.org, linux-fbdev@vger.kernel.org,
 linux-geode@lists.infradead.org, linux-gpio@vger.kernel.org,
 linux-hams@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-i3c@lists.infradead.org, linux-ide@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-input@vger.kernel.org,
 linux-integrity@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-media@vger.kernel.org, linux-mmc@vger.kernel.org, linux-mm@kvack.org,
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
 linux-hardening@vger.kernel.org, Nick Desaulniers
 <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>,
 Miguel Ojeda <ojeda@kernel.org>, Joe Perches <joe@perches.com>, Kees Cook
 <keescook@chromium.org>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
Message-ID: <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <cover.1605896059.git.gustavoars@kernel.org>
References: <cover.1605896059.git.gustavoars@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kuba@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=y6BwGzsU;       spf=pass
 (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=kuba@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, 20 Nov 2020 12:21:39 -0600 Gustavo A. R. Silva wrote:
> This series aims to fix almost all remaining fall-through warnings in
> order to enable -Wimplicit-fallthrough for Clang.
> 
> In preparation to enable -Wimplicit-fallthrough for Clang, explicitly
> add multiple break/goto/return/fallthrough statements instead of just
> letting the code fall through to the next case.
> 
> Notice that in order to enable -Wimplicit-fallthrough for Clang, this
> change[1] is meant to be reverted at some point. So, this patch helps
> to move in that direction.
> 
> Something important to mention is that there is currently a discrepancy
> between GCC and Clang when dealing with switch fall-through to empty case
> statements or to cases that only contain a break/continue/return
> statement[2][3][4].

Are we sure we want to make this change? Was it discussed before?

Are there any bugs Clangs puritanical definition of fallthrough helped
find?

IMVHO compiler warnings are supposed to warn about issues that could
be bugs. Falling through to default: break; can hardly be a bug?!

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20201120105344.4345c14e%40kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com.
