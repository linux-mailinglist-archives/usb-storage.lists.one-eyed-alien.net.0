Return-Path: <usb-storage+bncBCUJ7YGL3QFBBT7CZLVAKGQEVCRM4QQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x647.google.com (mail-pl1-x647.google.com [IPv6:2607:f8b0:4864:20::647])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F878B8FF
	for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 14:47:13 +0200 (CEST)
Received: by mail-pl1-x647.google.com with SMTP id g18sf62889789plj.19
        for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 05:47:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565700431; cv=pass;
        d=google.com; s=arc-20160816;
        b=kZh2N8mRSdXtwImJxIfB4tawHflb9usz+5qngNtOz6AAp9/uEEeN3XDse8irq7luIC
         GqL00Y73+suIT+Xdxhg/Vi9vGzC7kJ6qBzyjYI9cwEF9Pt3vSfS0AnZkKncHbzIfM7Lp
         fMEu6ebSXvEkbz+bO0VbE9j98gnIDEafhBghOhK++bJvGdN/1V7WthPGviLJaC3vCksY
         qS765rhZZhNc8glAPKwA51f7df88uQ53oh0gyxMLaf5PdRy1hpc0F1eAP+iy5Fo6N9SB
         3OWOFjZJgbgLEk98Bh1MYoOoD/oNV2QV3lhC76ZJu1SjibRvSwNUCAOd9uiSbhu7xhOi
         KDAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=pi4HQkf7PkSAxziGrOWGweJxQaOYyz+/K27xJU3CB7s=;
        b=hVxBWgtIG3JpDwc1kuYQL1ZIL/9YhB13/u8RjAy1oxk4pZei/kUdb2kgcuxC6YgwfO
         4dSbgl956WzZhWV+unWJEgR85EEHJ/RdA/7VasJvVBeaKbbfdQhZJyHcMbWKe2BlNKbx
         kN/vNYP0fPU2lWJ0FNcNYxy1Q2CsHKsJnob0GiLad/9lYbBlgKeJv2yGU2tmbpF8tEF9
         6L5Hhs0MhsNO/BG3JOERto24Zh9A9z7oKs0YD1XlbTO1gPbiBcNBrZtoJcJWN6XHUs+k
         zuAeNnqFFVgr3xP9o4g28BI9fPorYzI/nVz/hV5xiRZJvs5dGDQ8WVB186cG56hbXYOs
         yXTg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1vHS1eay;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pi4HQkf7PkSAxziGrOWGweJxQaOYyz+/K27xJU3CB7s=;
        b=PyYKkM2sDvg1MLplL6BOmAuG2PoBjqqfv6RP+7U7g8pNdFtWW9f4FWP9TdalY6dCtz
         NJV6tagQkxLlBSex4vSlW7Z0Z2URICsf6qB9FATYg1ed6JUwfWC47O4pVFJ8o1OJoVJ3
         zVFbN/C/l6AXus3/nIF1uEU0Nr5JazLwDPTFE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pi4HQkf7PkSAxziGrOWGweJxQaOYyz+/K27xJU3CB7s=;
        b=Occ4PKmQsbnWw9jNvZrVMJVnibO4z4nIkxg2iInUuhKhge7sStBKpVDkBhpJKJoX1I
         47RD7ggzMqAUd7X2AHZlFiW8kbHeIMxxXJxEeGz8sBCAnKeSNwpetlYwMjPoMsej3pOB
         dxp5ywGCJ2t0vZwAqs+bNp+7SCWlOTbOUsZX7lD90C7+UIaH1L/14KT/c1lTmfrOUWun
         6H1hHG4j8RoMAumNtfcdfXBY8dMtSoHhphNRUynEkfOSPYQq5HdjlkaJwkJW4vmgk6XR
         kosN1Jy7mv/25FOLEhriw2HFPq2Jiuemw8ZkF1r+6JINPQhbMmRF1rUuxon+ikwSaA3x
         d1yQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVvY4HxPDuOPeFVU8jmra9QT8tP/UUMqJatXzBZ/oZHVf7c56Gj
	XjIBcwLy0aWH6JZI9jS3MtAeyA==
X-Google-Smtp-Source: APXvYqxYlehShS0fMpbGP29NiwRxvPOHX0ImEGvovQsRcVPyiSSTAHct1WXf66AC76CJmEHxS+BmSw==
X-Received: by 2002:a17:902:4623:: with SMTP id o32mr36985917pld.112.1565700431667;
        Tue, 13 Aug 2019 05:47:11 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a65:4302:: with SMTP id j2ls15707127pgq.6.gmail; Tue, 13 Aug
 2019 05:47:11 -0700 (PDT)
X-Received: by 2002:a63:2006:: with SMTP id g6mr33714125pgg.287.1565700431259;
        Tue, 13 Aug 2019 05:47:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565700431; cv=none;
        d=google.com; s=arc-20160816;
        b=a/lC/kjmfenAI0BKvnQ7UuR6cscM0RyZ4s2YC/M7qCgaxJ74ex8h5L7CZ97gFEAuPq
         yEkUemgocVobYHgwSBHcWkKTOZP+8Bcey1LpTeBXFdTvjUo7QdAyWHa9Ezw9kO0/Ce2V
         wTxG/+8yA0lJKKsfUfg8OoziZ0uv87GpKh+8LaI5gul0RqmsZxMyl6hORyPpJW0Ol0AB
         AL/5lMlEPs46Z0iQZWooQEr9+BA13pm0PV8hvrwDBr9WMoo90PdWvCgjIRxf2pPYbmjB
         sTDedceHNmkvjki+7ys1hnd3Ptk0rw+TQLmPqExY1Mx+/8DawIq+b4KvQ6aK5zkc1Wek
         EL/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=s5UZpAIRy0j0ZPOdwmmq9QaMRgso4Xyw3aFfsj0x520=;
        b=tauaQammfKLGSd/UXlde1lhyH8M/Qud7AP7hmxxRcOZ/SS3u+y39VcIc2Obj/CmSwW
         1YG7vNCVJcEtLVl7UoJWk73yfBNfTL+0mU6YhT9RO7vCe9bmhGqIv1IDeSJVkVxv+US8
         ifNvE4tupQK+h3dFNRpy14j9c33diD0EOgc/mT4fEG4ddnSN+K27+olEbsOMICMMk2Ep
         YkBIK9rMLOmJkpcY6809TWTX1Z/G1har8ZeTm2dBlb8UrGSnl0989zrNDoF0AQ4wOOav
         lqOeyAbFVVY8ZGmoEMALLRoTkEK9treGHxdjTLoVe0eG9QpqGyw91pZCe0Q1sS0oO4UG
         j5TQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1vHS1eay;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id ay5si950872pjb.7.2019.08.13.05.47.11
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 05:47:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 834E920578;
	Tue, 13 Aug 2019 12:47:10 +0000 (UTC)
Date: Tue, 13 Aug 2019 14:47:08 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Matthias Maennich <maennich@google.com>
Cc: linux-kernel@vger.kernel.org, maco@android.com, kernel-team@android.com,
	arnd@arndb.de, geert@linux-m68k.org, hpa@zytor.com, jeyu@kernel.org,
	joel@joelfernandes.org, kstewart@linuxfoundation.org,
	linux-arch@vger.kernel.org, linux-kbuild@vger.kernel.org,
	linux-m68k@lists.linux-m68k.org, linux-modules@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
	lucas.de.marchi@gmail.com, maco@google.com, michal.lkml@markovi.net,
	mingo@redhat.com, oneukum@suse.com, pombredanne@nexb.com,
	sam@ravnborg.org, sboyd@codeaurora.org, sspatil@google.com,
	stern@rowland.harvard.edu, tglx@linutronix.de,
	usb-storage@lists.one-eyed-alien.net, x86@kernel.org,
	yamada.masahiro@socionext.com
Subject: [usb-storage] Re: [PATCH v2 10/10] RFC: usb-storage: export symbols
 in USB_STORAGE namespace
Message-ID: <20190813124708.GC12475@kroah.com>
References: <20180716122125.175792-1-maco@android.com>
 <20190813121733.52480-1-maennich@google.com>
 <20190813121733.52480-11-maennich@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190813121733.52480-11-maennich@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=1vHS1eay;       spf=pass
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

On Tue, Aug 13, 2019 at 01:17:07PM +0100, Matthias Maennich wrote:
> Modules using these symbols are required to explicitly import the
> namespace. This patch was generated with the following steps and serves
> as a reference to use the symbol namespace feature:
> 
>  1) Define DDEFAULT_SYMBOL_NAMESPACE in the corresponding Makefile
>  2) make  (see warnings during modpost about missing imports)
>  3) make nsdeps
> 
> Instead of a DEFAULT_SYMBOL_NAMESPACE definition, the EXPORT_SYMBOL_NS
> variants can be used to explicitly specify the namespace. The advantage
> of the method used here is that newly added symbols are automatically
> exported and existing ones are exported without touching their
> respective EXPORT_SYMBOL macro expansion.

Ok, I can't read text, this answers my previous question.

But, as an example, shouldn't we also have some code here that uses the
EXPORT_SYMBOL_NS() macro to ensure that it actually works?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190813124708.GC12475%40kroah.com.
