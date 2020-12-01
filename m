Return-Path: <usb-storage+bncBDPYNU65Q4NRBBP2S77AKGQEDLZFMGQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x445.google.com (mail-pf1-x445.google.com [IPv6:2607:f8b0:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id 739342C98FF
	for <lists+usb-storage@lfdr.de>; Tue,  1 Dec 2020 09:21:27 +0100 (CET)
Received: by mail-pf1-x445.google.com with SMTP id 192sf500601pfy.15
        for <lists+usb-storage@lfdr.de>; Tue, 01 Dec 2020 00:21:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606810886; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nhn73QrxoYUNX0Axyq6x1uBR4mvkcPNekhB/hzITdTErwmQlts8JxYQ3Byx7k9qdXQ
         p6Tp9ZhX/9fckuOV3Ag/e+7h9zVbvIREFmqRm0MzVApL3AR3gRdVJUGGWDTeuFFoZldk
         /5bOYcZVe+ZzyioG/kBBQRWAoZV2YLUJ/yrj2yRG0qDWAr3DrPVSKdFCXf6XV6HewKmq
         6eGxO6SBTnNsT1Tnex7Xmb/33zC1OP72CUPKw6vQnVNUVXbyu+Cnvm4+8sypJyMk0Pzd
         q40gYy0Yga2Pz6Hkredansjnkznrh4HRbSqyWb76FPUeVFmgHr1FAHMRrxQuHGzvHqm1
         dmtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=BNdUMrOpfYSSIvxQo8f1p1X/bk1FxOov5Tirv8+Nx0U=;
        b=ycjkRWD081mDb78YObT3PAfF3Jk2N43+Ixkg8Ugi0F+fhKVEV5vTOlNfD/p/L6ZF+3
         bCOU5TcNy+IZTJ63lk3PSEBt30AInJPGBQYa8pXWGhRYgHysvE2Afdg2pFONOLb17qiM
         h/baHlZo8c6XBYWfu1nbrDhim93kP4EyO3Dpvf0c42jNuohOYK67jdkHOPWtSeyTC9LX
         /6aYcIzKQyp6xDES+Ps/1/oE/kWvAYgBEg7oAfqtvyAi9wle6ilVxnJuwR/hqy3fwZrF
         COeutWjhUdwuoGWfRMVi+c6alB4n1y5/YGr6XaPRtBMlsJvkTFlnlxrHUaK9W4bGQfXU
         QziQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0ugfFVtm;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BNdUMrOpfYSSIvxQo8f1p1X/bk1FxOov5Tirv8+Nx0U=;
        b=TRDANmglvL594h4VgVhRIPolNyBNsOtMuuZY0X104BB6srzni5zr14iFRhYhimhaiK
         9vZXgYSjmlTLT8fxK5LDSUIwS/16XP/7FlyYEos1WWQnNwOBgLhI9sI6SeRx+DpzspSg
         MPRCsIPTA3uTanmt+UJ/BuhDatneUfXvel2RU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BNdUMrOpfYSSIvxQo8f1p1X/bk1FxOov5Tirv8+Nx0U=;
        b=SEuSZIwHdDCt8s1Pl72+GDfDqlHuECHwj8D6FaJNQteTVPjAiORVezvRQgXb3sk7H3
         ZLPGtDQS9P+ZoppKIuA4cFmVeSS+AGN2UEnz4yfEFvqy2sNzZUpNLMQybASv0uXDz7Tn
         T4fF1+4wUbsNdk71FMydlE8Vy5h6wdmHhOrwmd/tZVe2advDIbc60o+Rf4gBoIHEFlZx
         hnVVJpKWm4m5V4t1kaS/1ZVRs4ZoDQcvZwWQamwRkcGiQwbwfR6nSblfE17bAcD/T1MT
         NvBeVJM+1HEQd8klXplkuyIXt7zLeLbnPZcDvfWBvTMRarWHa0kqEyD7UK7/5zJFVmnE
         ANyQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531gyO9CbzUJ5MfVjEVrmgiVfVnZJ2+77WfU+Um7AxEYFpM6oIao
	ymnl+gLShLbLhZXgkUmqVkk29g==
X-Google-Smtp-Source: ABdhPJxQZhQ7/DE/kxjmm09R/qOy63qFXatDxKp1qiGkVPRxXXW6zoYBUDEx6gE6mAIpHCKgqm3x6w==
X-Received: by 2002:a17:90a:62c3:: with SMTP id k3mr1556899pjs.24.1606810886061;
        Tue, 01 Dec 2020 00:21:26 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:c142:: with SMTP id p2ls468316pgi.1.gmail; Tue, 01 Dec
 2020 00:21:25 -0800 (PST)
X-Received: by 2002:aa7:8a0d:0:b029:19c:2209:7b59 with SMTP id m13-20020aa78a0d0000b029019c22097b59mr170641pfa.81.1606810885164;
        Tue, 01 Dec 2020 00:21:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606810885; cv=none;
        d=google.com; s=arc-20160816;
        b=u04zlmwSrD6pB7VTReWRuUR0o8NmUutQsRXOBfuB1UKhgtdahUp1UwMYZZYWiMCZU+
         wrZ7H4htvmsRGXNqG0K0wkd/HA2C8LRxlO9d9a9ErY/q6BE9Mmj5saDBEWeTd+phlKzP
         D2f73dgodHwKv/Mjqj/2S22KSDJt8SVNmDNvjUHY6D6/BB1sqYY6v22LHTDRCJI5s+32
         pfPQo/m6bnhZifxKUJB0RrgdTS+yAScAe6vlYpEZHBFfm1Z6ODxtRDCdQld+rHjeKJGm
         jyhBq1vAEj0peNyg4CKPOAME+T1+0ivh07Y+rglJUYE5aQaVEjFz0gjzyQWIawVWww5y
         /EYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=XTNM/r1KJ5vuEoi2NjGQ6xIAScIH6wyVPEUUjwvdJLc=;
        b=SNAWRfsU3N3yEamA0WBCkbL1NxBcY/LDTxREnO41Vrp4XLsuvaAK2QsanMgJsLvkiY
         02FYx4EorKicRGcfT185osEAcLpvcKXgtD/ywMMh5aM7fY5CBa6yB8nS1jy88Rfzt9eg
         XaBt4lPxcWvsfRrC/PdU22kkS/RqkMXExpPHCDe49UMFCRssZkCefWYfwga/7PFr6yTE
         jbIx3xVS6cYH8x4GI+otzqwbnUJSy67sg6CZK8c8C7vPeBHDI3NYZnL+0F+BQfqzXkwP
         2Wt1soialRSZhq8X+O5hR6Zk3rR4CJgvnL4d/gR3qwyMgJxChDjXzqjNdrU2uP3LrVBV
         5c4w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0ugfFVtm;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id 8si894051pfo.245.2020.12.01.00.21.25
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Dec 2020 00:21:25 -0800 (PST)
Received-SPF: pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from embeddedor (187-162-31-110.static.axtel.net [187.162.31.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 94ECB20659;
	Tue,  1 Dec 2020 08:21:17 +0000 (UTC)
Date: Tue, 1 Dec 2020 02:20:47 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
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
	linux-arm-msm@vger.kernel.org,
	linux-atm-general@lists.sourceforge.net,
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
	virtualization@lists.linux-foundation.org,
	wcn36xx@lists.infradead.org, x86@kernel.org,
	xen-devel@lists.xenproject.org, linux-hardening@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Miguel Ojeda <ojeda@kernel.org>, Joe Perches <joe@perches.com>,
	Kees Cook <keescook@chromium.org>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
Message-ID: <20201201082047.GA11832@embeddedor>
References: <cover.1605896059.git.gustavoars@kernel.org>
 <yq1h7p6gjkk.fsf@ca-mkp.ca.oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <yq1h7p6gjkk.fsf@ca-mkp.ca.oracle.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: gustavoars@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=0ugfFVtm;       spf=pass
 (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gustavoars@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Dec 01, 2020 at 12:52:27AM -0500, Martin K. Petersen wrote:
> 
> Gustavo,
> 
> > This series aims to fix almost all remaining fall-through warnings in
> > order to enable -Wimplicit-fallthrough for Clang.
> 
> Applied 20-22,54,120-124 to 5.11/scsi-staging, thanks.

Awesome! :)

Thanks, Martin.
--
Gustavo

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20201201082047.GA11832%40embeddedor.
