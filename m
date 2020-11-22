Return-Path: <usb-storage+bncBDY3NC743AGBBFHV5L6QKGQEIKFU4IQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x146.google.com (mail-il1-x146.google.com [IPv6:2607:f8b0:4864:20::146])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D502BC88E
	for <lists+usb-storage@lfdr.de>; Sun, 22 Nov 2020 20:23:01 +0100 (CET)
Received: by mail-il1-x146.google.com with SMTP id s74sf12202543ili.16
        for <lists+usb-storage@lfdr.de>; Sun, 22 Nov 2020 11:23:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606072981; cv=pass;
        d=google.com; s=arc-20160816;
        b=C4ghjXQ4DOMQ3DQWzGVIahJlNiHvlVm+HHaFD0i4jNtFlGV86cWnfF8VrM/DLxlZbd
         9R/7W5Bgg0hhWkxXSExAqpna8i6FFw0/suXZaOePDPu6DbMQzPXEIw60d6+tySV5bvei
         1Xi66+8/du3gCQ61o7E2P/JhoDmeVarjlMyUdbXLznbyoHw9SH4ptXe9LXUZFEsFJ1NE
         hrj3s8uYxw6LLBP3pdwcgOLDu8ELX9n+9RqFTEV/v/dalGRnnp4Jj3dOOfXrS43khns3
         j3GZ++ZGCLIxfjAmnP7VvQziGyI8XVE6fZbzwEq/A+s25PSmbv7QkRXSUXazwGAID9W7
         O0Tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=vTs8HDzM52p/U9HXx62sdmFj9MnvRqQCwiD0Gqu4BGg=;
        b=KxVfWvavy9lhB43eWawppTDbwWc1QNsMm9JVGWH5d6VdkJHHkgFD3sMdHULXs0ekZn
         25MkU/LA55Yd8g/R+uypoYQYF6as887MND/cDWoXI58z9Q0AmY3dBSPAQmlaoMjdSCML
         dTYuVMqRJEjq/a5RPfJ/i4eFDUQ9ogk9jLDYLxtAkblVlNA2tYubkuPqHTw+di8c6Zes
         APLtnUhgG06xsSH8mDzDFeE8Kip233IVAzKOHtxPpdTX+1kgeLktVXhjjl+WXsTxIA3n
         cos/I0lBBIpMJcbHtihE7pwlE9fWJBIWHuUh3xi0+/rbsdZHF9gqNWPBHArctkTa1uWj
         mthQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 216.40.44.192 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vTs8HDzM52p/U9HXx62sdmFj9MnvRqQCwiD0Gqu4BGg=;
        b=BmuEVn1b+PXcWhP6RCd71EhSNTnSxZpk2zDvOcqK7LJuRU5C818yY/D2sKJWUNz6Bc
         oS8/FEolxmhZet/+V/14vvoL16CT3bMLUVsXuQ9+vS3F9e4MWTRGy+uyozEzz1u9Iclr
         X9Ovl6b67Gq2JlPH6dXM/gG1Tgst+e7TnoQT8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vTs8HDzM52p/U9HXx62sdmFj9MnvRqQCwiD0Gqu4BGg=;
        b=Qg0iSObs8KiP8qwCvDpmf6Wy+Ib7Wqzw+uFWkHSCUoEDESIDUPI/570Bllwt0TbGrE
         6WEq2sdHxmW4zfS61qltxxVDehFM2wSuoJgjzh5bOljeEmjQ68EZXyBaxKvOfGUHSs1A
         t/BIdOZiciWnmX6bXExdQ3osaK6eGmH44BllVurw0QZlkvAivjwZ16dd7ULjLRmJSs6N
         f38m+nwoWKejbIxS5imNbkh1kn6Pla1pWc73fCzeHF7DzjJYYFKEjuTLlfQgUOvHHiMC
         88o8x9HEPl7lOFLqxAyyFhW5dihyxdsPGva4j7WtnmMmwC8ZwMyuAyGnSehOSK5Clfoe
         3A2A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530LwlsXA0nX/YUoUGl256oF/uTCBvkFph1n30XC1j2Ym2TmJVaO
	oe12dOpmQFATFfs8RfRWLaMMXg==
X-Google-Smtp-Source: ABdhPJzffysMC0IVORjFjvBOBzgVpXJpIaGYolE/cVFqxRmOGT0huJRmzL5mm+Ne4oDlTtOei4ywGQ==
X-Received: by 2002:a92:d0cf:: with SMTP id y15mr34859272ila.168.1606072980798;
        Sun, 22 Nov 2020 11:23:00 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6602:218c:: with SMTP id b12ls2022761iob.1.gmail; Sun,
 22 Nov 2020 11:23:00 -0800 (PST)
X-Received: by 2002:a5e:c904:: with SMTP id z4mr17120664iol.14.1606072980250;
        Sun, 22 Nov 2020 11:23:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606072980; cv=none;
        d=google.com; s=arc-20160816;
        b=LDZGDlkMqaOF9m1TLRmqcfizpsmb5DBkM8n9PqwFtXgamne2QSw6LYvr2lziV7VLPd
         joLKhvdqyNoUAPGOKsX2FMwjVLssOK6zpne+zb8hPZD7qFUX5affJyIgkRz2JC8NNmSr
         qA+p3p895Hx5K+NrkiDl6DHocKg7d/KyJnSe+s6FCK61U6hpLvgElUcInylIlsDviGNY
         4+g1FA/pFNIDtiE4EjGvjkTRnvocW2V+MXBY2ip9GBQXWFcbCZJsBCNudT2LFZlrpMv0
         d5UbnsySPQYj9xXscAZdmlurFcKoacz0qCZpOZJzYvbdRlmB+81lvEo+A1jOk3eW95DI
         Z6PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=zbH+Z7yDWdpk1TgXMHYp7t8HVqUqFvrGCa+p/3OcE+I=;
        b=DHXToTQ2/0IzIaOH7zYIBC3P7l798sRLPaxDmOg1sxEAqZdk54fo4JbMd+Yvoa2JG9
         hTajpHfbFPuVLAGS9bqkl5DCxfv3ke2xQ/7zDgwM7rvfLWXFEo5HjSaEVqeR1x/2ySt6
         Xfq1EiDfuuvEFLY38LMsgCiJsn+JSXaO+y6sjakLljpX+sqpvTblS0rLWCBqI1Op5qE2
         ABeIk6oGUBlFu5gAU3UG/KysRhMjp+IjOKhGa7ebHwPWvA+3XcR+96GN5plQ0iOiOXFM
         6tlYGTR1FFMS8MYwCbpn6qemdTKIhiWx2AvtFxrE1YeS4jPXBnXFU3kg7osgaZ9TffWs
         H8fA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 216.40.44.192 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0192.hostedemail.com. [216.40.44.192])
        by mx.google.com with ESMTPS id r2si798956ilc.77.2020.11.22.11.23.00
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Nov 2020 11:23:00 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.192 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.192;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id 8A2DD18221869;
	Sun, 22 Nov 2020 19:22:59 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:967:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2525:2560:2563:2682:2685:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3352:3622:3865:3866:3871:3873:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4250:4321:5007:6742:6743:7903:8985:9025:9108:10004:10400:10848:11232:11658:11914:12043:12297:12555:12740:12760:12895:13069:13311:13357:13439:14181:14659:14721:21080:21450:21499:21627:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: curve68_4013d692735f
X-Filterd-Recvd-Size: 4350
Received: from XPS-9350.home (unknown [47.151.128.180])
	(Authenticated sender: joe@perches.com)
	by omf17.hostedemail.com (Postfix) with ESMTPA;
	Sun, 22 Nov 2020 19:22:48 +0000 (UTC)
Message-ID: <d8d1e9add08cdd4158405e77762d4946037208f8.camel@perches.com>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
From: Joe Perches <joe@perches.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>, Kees Cook
	 <keescook@chromium.org>, Jakub Kicinski <kuba@kernel.org>
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
Date: Sun, 22 Nov 2020 11:22:47 -0800
In-Reply-To: <0147972a72bc13f3629de8a32dee6f1f308994b5.camel@HansenPartnership.com>
References: <cover.1605896059.git.gustavoars@kernel.org>
	 <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	 <202011201129.B13FDB3C@keescook>
	 <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	 <202011220816.8B6591A@keescook>
	 <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
	 <ca071decb87cc7e905411423c05a48f9fd2f58d7.camel@perches.com>
	 <0147972a72bc13f3629de8a32dee6f1f308994b5.camel@HansenPartnership.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: mx.google.com;       spf=neutral
 (google.com: 216.40.44.192 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Sun, 2020-11-22 at 11:12 -0800, James Bottomley wrote:
> On Sun, 2020-11-22 at 10:25 -0800, Joe Perches wrote:
> > On Sun, 2020-11-22 at 10:21 -0800, James Bottomley wrote:
> > > Please tell me our reward for all this effort isn't a single
> > > missing error print.
> > 
> > There were quite literally dozens of logical defects found
> > by the fallthrough additions.  Very few were logging only.
> 
> So can you give us the best examples (or indeed all of them if someone
> is keeping score)?  hopefully this isn't a US election situation ...

Gustavo?  Are you running for congress now?

https://lwn.net/Articles/794944/


-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/d8d1e9add08cdd4158405e77762d4946037208f8.camel%40perches.com.
