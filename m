Return-Path: <usb-storage+bncBCUJ7YGL3QFBBIUS6XVAKGQEPLLNJ7Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x547.google.com (mail-pg1-x547.google.com [IPv6:2607:f8b0:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id C857597B00
	for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 15:37:40 +0200 (CEST)
Received: by mail-pg1-x547.google.com with SMTP id 141sf1269763pgh.12
        for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 06:37:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566394659; cv=pass;
        d=google.com; s=arc-20160816;
        b=mrHXG2ozBUzQincAKhyXzV1jiKHXJf8FADCSmzopHEvwyU7U8/Si7DQyKFRqgeYV+I
         mRp8tOjY7mP9tLvyPFbeM7Mis7X601bSTtU+NfpyT0EOpMpuB8tF3ZqanDPZZl5NKePT
         CvuOmIoaDHk1MTi/zQh/FmecSc/0YmwHwVQeyZUWjbunTieQQ2YHO3H7sSBJCyI7nab+
         hiGuf0dpcf/noCv6oIPr8365ooSnr5XhLwGeOYmUYLEOWDPxbP+SoCLyHuJmxPZ1uifv
         3FXHiCIbJyQbleVeXu1lu5QqBptAaJdcKKCDqojBMNMy5Xc34yTG3SCB4K4ucCNUQjDz
         HPkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=XlIHxVGm23wAVNIWIC8l8EVghSn4e2fZA+uS/KZ31As=;
        b=leRbZExpaT3SlvwPcwboMPRz46jDK0TGLdOCdhOdZSrUTGikpP0ULVL9rWEtS/3EoQ
         yX5o3DSelDV5GPik3eikAc9HcL6GR9aEfc2BqefV7UrqHRKsM12WQuvLJiBNaZoVDpWO
         QKSeVJY4P+AumOnzoWJLExPVRjU7oAL7Q5Yxc2JtaudP2N75CV6sDkkD8BCRpFj/TpcY
         Trx0Kn8/YZz42aulK6dUxyyLHommRA56v4rs5d+HaezN3yG9OCf22EfRmGt1QL70TJkU
         Y3gc1DuAfXSg1uZ8Nmrs1hTYi9suKHm+V+M1ZcYVMmy3N81CcSS1WlkG9haB2AENaM3/
         I16Q==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=cIqReoHF;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XlIHxVGm23wAVNIWIC8l8EVghSn4e2fZA+uS/KZ31As=;
        b=ACEarNadZah3dduLZ8rLlj/namt3D/pkAi7MXONz1pRrKtHLrNd8VSjfV688JeZWH7
         AWgDYcVCaFHz5itfnEg329fZFZaJ43j8USg04/9IjwS0W4UUnE/Z3pL/IXi+4Mjwd34W
         LpwiU1h7YRSuHEqQ84z6hE0Cs1uarlqK1ZC70=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XlIHxVGm23wAVNIWIC8l8EVghSn4e2fZA+uS/KZ31As=;
        b=l+USq9Oue0E9Z3otDtF+9BidWMMGY+PeYBo3uiQgDTc+aIxXzgDyndSYwC3iRnpWQb
         ZZ+jspIJkKLLTHTaJYzFFnxfB26qWWalTKi2+gJcppmmS5V9y8w2zAJWcJfWGZrBA5ll
         JQhsTvSak4h3T6i0sQ7uyKXZ48VWpO9kf+Vw8dCGeeqjFY+tIKWXVlaLuraDEVV6CNPz
         wkknJr1wfRxftl9+ERcNtqEM8nKeYnUiv8F8162PyLwZVU1ImL5zuEjq1pDFwLp8JadU
         Zh9SvDqk3L6Wfo7YIVSBOdt4UD2JxY1xfrLUjnxafrXcNs2BRJhUKOwS4RMiS8zD8Pux
         qz8w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVsKr9rK+kvRyCekt/m6bbAwZS7dUDmvmB36ULIJepmaxPvM0En
	B8CjinoMV9extBfzrurCQzJnSA==
X-Google-Smtp-Source: APXvYqzdweljXheMQLMuApSsgo0Ua/xY4rdaP0spa6O+AFVcDhcXwzaY6CkKycl6iz2IfQbi9D/QaQ==
X-Received: by 2002:a63:7e1d:: with SMTP id z29mr29313401pgc.346.1566394659090;
        Wed, 21 Aug 2019 06:37:39 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:800d:: with SMTP id j13ls625697pfi.12.gmail; Wed, 21 Aug
 2019 06:37:38 -0700 (PDT)
X-Received: by 2002:a62:7789:: with SMTP id s131mr35582284pfc.50.1566394658671;
        Wed, 21 Aug 2019 06:37:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566394658; cv=none;
        d=google.com; s=arc-20160816;
        b=YmdDGZhH7INEtfaV+PEjZKAKdE7/HWVEmknxnQDdEAkeWdubQOGts4nRDHugyy2x6i
         fqYMhnTUCNpEkhCngPnTEwbJn8AcGtCxjov1B8pBDcqePRzXWBLAzNcICGfDG48R130e
         wP/MqABs2Y3E/h69uQ24aAo5QChVFHeYGcvistre3uemlVc9dlqunFdfklhu07c2YMAx
         QoH4p7T//O0Gx8cfgd/aVB4q2X1+8XlfjzklIayrI/tKyIWC2OYEipZmtEPtSLc5LTRQ
         dAUdYKz+eDQ0xYnx+1iDoCZaWfHLifQHIHdjiT4Mh552GKuuwYRP49GUu9uf/i2Gm1wA
         2htg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=eQd/NxS9MlVw3V3CrcWLpfIXvsSxpNjiDIPbL8LCYjQ=;
        b=XsaLh52hpJFKe5VfuYasu76pH9+d7VMa2/UZDkfspyG/nI/m4GhWDapLRstnJLvtdO
         P13G/nuA1cP94henTNdcMhK9Z1WtzPvGmuW9K8datZ2q2xSi3nOYnYv+FlAQjARF1758
         0D3rz3DRcERnPgv2QfY8k2rMLg1trIFCPYYBLdR759ToJG/pV1o7BuyY8+Xoc3BbvCha
         9oj2RIs8LT0oyk4a9js/SnWiSdM0Y3w9euaxqJ1NKsQ4zr4+8RBldNblF+XaoUPMYkI1
         UgQLLSo4tuV4O5v18a/GTV1UKng9k04iay0aUFQLm4qEqZhmOBfAPUn83AQMHvAyMz0z
         OrUA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=cIqReoHF;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id w11si14153301pgk.384.2019.08.21.06.37.38
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Aug 2019 06:37:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [12.166.174.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E680322DD3;
	Wed, 21 Aug 2019 13:37:37 +0000 (UTC)
Date: Wed, 21 Aug 2019 06:37:37 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Nicolas Pitre <nico@fluxnic.net>
Cc: Matthias Maennich <maennich@google.com>, linux-kernel@vger.kernel.org,
	kernel-team@android.com, Arnd Bergmann <arnd@arndb.de>,
	geert@linux-m68k.org, hpa@zytor.com, jeyu@kernel.org,
	joel@joelfernandes.org, kstewart@linuxfoundation.org,
	linux-arch@vger.kernel.org, linux-kbuild@vger.kernel.org,
	linux-m68k@lists.linux-m68k.org, linux-modules@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
	lucas.de.marchi@gmail.com, maco@android.com, maco@google.com,
	michal.lkml@markovi.net, mingo@redhat.com, oneukum@suse.com,
	pombredanne@nexb.com, sam@ravnborg.org, sspatil@google.com,
	stern@rowland.harvard.edu, tglx@linutronix.de,
	usb-storage@lists.one-eyed-alien.net, x86@kernel.org,
	yamada.masahiro@socionext.com, Adrian Reber <adrian@lisas.de>,
	Alexey Gladkov <gladkov.alexey@gmail.com>,
	Andrew Jeffery <andrew@aj.id.au>,
	Andrew Morton <akpm@linux-foundation.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	bcm-kernel-feedback-list@broadcom.com,
	Benjamin Fair <benjaminfair@google.com>, cocci@systeme.lip6.fr,
	Dan Williams <dan.j.williams@intel.com>,
	David Howells <dhowells@redhat.com>,
	"David S. Miller" <davem@davemloft.net>,
	Fabio Estevam <festevam@gmail.com>,
	Gleb Fotengauer-Malinovskiy <glebfm@altlinux.org>,
	Ingo Molnar <mingo@kernel.org>, Jani Nikula <jani.nikula@intel.com>,
	Johannes Weiner <hannes@cmpxchg.org>,
	Julia Lawall <julia.lawall@lip6.fr>,
	linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-aspeed@lists.ozlabs.org, linux-hwmon@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-rpi-kernel@lists.infradead.org, linux-rtc@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-tegra@vger.kernel.org, linux-watchdog@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Nancy Yuen <yuenn@google.com>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	NXP Linux Team <linux-imx@nxp.com>, openbmc@lists.ozlabs.org,
	patches@opensource.cirrus.com,
	Patrick Bellasi <patrick.bellasi@arm.com>,
	Patrick Venture <venture@google.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Richard Guy Briggs <rgb@redhat.com>, Tejun Heo <tj@kernel.org>,
	Toru Komatsu <k0ma@utam0k.jp>, Will Deacon <will@kernel.org>
Subject: [usb-storage] Re: [PATCH v3 00/11] Symbol Namespaces
Message-ID: <20190821133737.GB4890@kroah.com>
References: <20190813121733.52480-1-maennich@google.com>
 <20190821114955.12788-1-maennich@google.com>
 <nycvar.YSQ.7.76.1908210840490.19480@knanqh.ubzr>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <nycvar.YSQ.7.76.1908210840490.19480@knanqh.ubzr>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=cIqReoHF;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Wed, Aug 21, 2019 at 08:46:47AM -0400, Nicolas Pitre wrote:
> On Wed, 21 Aug 2019, Matthias Maennich wrote:
> 
> > As of Linux 5.3-rc5, there are 31205 [1] exported symbols in the kernel.
> > That is a growth of roughly 1000 symbols since 4.17 (30206 [2]).  There
> > seems to be some consensus amongst kernel devs that the export surface
> > is too large, and hard to reason about.
> 
> This is good work.
> 
> One solution for drastically reducing the effective export surface is to 
> have CONFIG_TRIM_UNUSED_KSYMS=y. This is more extreme than symbol 
> namespace, but might be worth mentioning nevertheless.

Oh that's amazing, I never noticed that feature.  That is a nice thing,
thanks for pointing it out.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190821133737.GB4890%40kroah.com.
