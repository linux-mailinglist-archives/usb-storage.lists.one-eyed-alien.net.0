Return-Path: <usb-storage+bncBCUJ7YGL3QFBB74P6XVAKGQEN2YBFAI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x646.google.com (mail-pl1-x646.google.com [IPv6:2607:f8b0:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FCF97ADB
	for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 15:32:48 +0200 (CEST)
Received: by mail-pl1-x646.google.com with SMTP id b30sf1480851pla.16
        for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 06:32:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566394367; cv=pass;
        d=google.com; s=arc-20160816;
        b=yVAz3ucVYIrMBA/Thf9JQgr5glV+sbXDFCLkaiAiSXWHkgU4P4Iap/s6kFAX5zwQP1
         fClxp5k9fDsxFbo47aqXQXZQ5K5NFhS9I09mqAnHZNsFR0gFDyLLwPtrKY4n7bRF/16f
         lyVvEvAJxvHkE0WRnxCFupAbD7PPRnONuytGNKHZlIC+8QvaycFvqhlwBNjfPvXHs4Eu
         m18vqnO2g/mzzbwKZ9E6c1Sgo2KRQkgk7QZ+vmEfPLQILSdlRqpdfPrzqfbw+1k9UvR7
         ShhaeazViX183LSEZ6Q7xeonO4dvvch3kJT40z3Xetze3BkhJ0zYq0ys8ns6gajnVJMn
         APGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=wGKP19YHa/CMto06frnPGdggN80CtcwYZJRY5yaKjqM=;
        b=TJbG4PPeE55KVOAqxaNv47E0NmvMO2tKC9DVSWCL6Eqt/6aZhejm7YgIYjNg+ga0ZU
         4iCDVs8kBbcbclZ0z++a86CCRThu4I2iH31ipf1yzEF7SFFqUJKDDZpxhlf/Dew3N//n
         XLFpEW0n1Q1+D1e1iCyzZv/oxzVfX7Qmf4gvQCV2pPIYr4vcyoTdVpsKetmV7sRqdbaG
         PsgGX7vXSs8YsreXor5kaNEfdwPTf7FkxmWrTz7LNX/6i9NKj4DV0v6GpzNM/a1I4QxZ
         iHqEqYFRII2EUd4LO9EOAVqSPJur6Au0c9ObLs3rNrt8Mu3r3O+gbb3II6I9eGN5zPJa
         AvVw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=JcNleWB0;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wGKP19YHa/CMto06frnPGdggN80CtcwYZJRY5yaKjqM=;
        b=kvgTuCCRmfDT8TsDNp97Q8PQJqvYTfMEbQbXPj9EJfUw57VdArV0L8x6/rySGOUVPu
         zv/AD1E5M7DqsmUQPjx3jbqL/4xFlJEelbKXlN15hDCxkrWK6xKazQzeFOlLZyH8k+rA
         sv2iBoJR6YmMk/FRPB/OpN2D0e1LIgGbu+XMg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wGKP19YHa/CMto06frnPGdggN80CtcwYZJRY5yaKjqM=;
        b=NCZieD/qZs7/eTd4mfACjQqOeF5rULMg3BxZAW7NVC74XlolTTeOYi2Q1UuCwcwpFF
         8JtpZjxT4qXdsFI+l4AF24QMriXG2QEfU+F0y/nUtbpwVfgsA9WqEVI0D7cjs4CPksSs
         4VrxsE3OJMHPpKamPQf2vQUyRE4mVBVWQKbPYs6H8O6BTTq7BWCQD3jhJG7COdbjSP0B
         YnlMiYtuCAQhEHun+bveywkuKpG+U0Z+l4RCmnkB+nNfByQ5KP05+p18goEvaM8n1Fft
         QOXY2mufZzikElpEJEnhvGBKDM1bZAMRgWBVsynOExqswJ63PSC0QlB3a9BuEhm7mbVS
         MmAg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWYPBH4iJV+RZyTTroR888/Cihy+8CUsaj6RIE3IuHVwnxbMgLp
	lsSUMZFjDky1/G8lbV585S30gQ==
X-Google-Smtp-Source: APXvYqzDFeurNbgqb/3H9GUGi7bfUFYBEX1aoJZmPIvzFtSUUE7+p6OpPZS2gEPd7vrdyxj0+koQag==
X-Received: by 2002:a17:902:28c9:: with SMTP id f67mr34192154plb.19.1566394367379;
        Wed, 21 Aug 2019 06:32:47 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:b518:: with SMTP id y24ls622836pfe.14.gmail; Wed, 21 Aug
 2019 06:32:46 -0700 (PDT)
X-Received: by 2002:a65:621a:: with SMTP id d26mr29264338pgv.153.1566394366622;
        Wed, 21 Aug 2019 06:32:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566394366; cv=none;
        d=google.com; s=arc-20160816;
        b=m6j27f/eLpqk9cprFDycoYJbRbSUE6AGakLFmTg+TQEayI3PGVG9+Xa1c51LrFG0Cn
         1Py9xDq6KpO29mZncsrhzg2gh43emOmMZoOfzzf/h9bvjZ0f6k5KHhRt6t3JuX+VBhDA
         +P4NQnwzZfhHQBKfnmgribR2mYIb2/wNqj0U5uGbjikZMaMgZaCWCukB3amvmuMfpieK
         9eqaulzPCjxppOy6jydlD4ZtWqwwcGwwezGDW85ijezkxDpLzRgySjioo24DBA0iXTYn
         YPjB48cJEvngJ2LLJYKR8rnUJlihECRvYzGQvG4GxRYyBnSycu5H7LHj3cpmt3kNByqH
         BJcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=nGEGwBAbz3G1/1oBPZ8ZB+QymPVZdVGXluasmp9yERQ=;
        b=V5MHwcGv2cvvdcIMPNbH25VIZFV+TC0MYODrHZEbCY2oPNewNhbOCZybyZZHuYbfjU
         G9ph5jfOOfcMm4+XLUQfiRqWXuAHjysUxvRnPolFgPJN0Kc2Aqpmy3MQGb6Jm2ao8tYf
         kgb46w/USeZCh6uYJNuG/OfwsSv7M+XOW7itGoNWj+6KvasnFmusQWp8+tlE+AMfO0/4
         WSOMsyL7nrgjkK0RbwqMmqiD3yLQIqDU0hcPVbycwZzZGmC5j6v3WxoZVvvHIk7ltKWg
         +mJN0KBvNoXUixCtxKbFlJjW4ebRCobhEvEvm4Tx6boD478WK+9HkNWWlExpmn1KqwLS
         8ojQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=JcNleWB0;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id c1si8329195pld.348.2019.08.21.06.32.46
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Aug 2019 06:32:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [12.166.174.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 474082339F;
	Wed, 21 Aug 2019 13:32:46 +0000 (UTC)
Date: Wed, 21 Aug 2019 06:32:45 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Matthias Maennich <maennich@google.com>, linux-kernel@vger.kernel.org,
	kernel-team@android.com, arnd@arndb.de, geert@linux-m68k.org,
	hpa@zytor.com, jeyu@kernel.org, joel@joelfernandes.org,
	kstewart@linuxfoundation.org, linux-arch@vger.kernel.org,
	linux-kbuild@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
	linux-modules@vger.kernel.org, linux-scsi@vger.kernel.org,
	linux-usb@vger.kernel.org, lucas.de.marchi@gmail.com,
	maco@android.com, maco@google.com, michal.lkml@markovi.net,
	mingo@redhat.com, oneukum@suse.com, pombredanne@nexb.com,
	sam@ravnborg.org, sspatil@google.com, stern@rowland.harvard.edu,
	usb-storage@lists.one-eyed-alien.net, x86@kernel.org,
	yamada.masahiro@socionext.com
Subject: [usb-storage] Re: [PATCH v3 09/11] usb-storage: remove single-use
 define for debugging
Message-ID: <20190821133245.GA4624@kroah.com>
References: <20190813121733.52480-1-maennich@google.com>
 <20190821114955.12788-1-maennich@google.com>
 <20190821114955.12788-10-maennich@google.com>
 <alpine.DEB.2.21.1908211520360.2223@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1908211520360.2223@nanos.tec.linutronix.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=JcNleWB0;       spf=pass
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

On Wed, Aug 21, 2019 at 03:21:22PM +0200, Thomas Gleixner wrote:
> On Wed, 21 Aug 2019, Matthias Maennich wrote:
> 
> > USB_STORAGE was defined as "usb-storage: " and used in a single location
> > as argument to printk. In order to be able to use the name
> > 'USB_STORAGE', drop the definition and use the string directly for the
> > printk call.
> > 
> > Signed-off-by: Matthias Maennich <maennich@google.com>
> > ---
> >  drivers/usb/storage/debug.h    | 2 --
> >  drivers/usb/storage/scsiglue.c | 2 +-
> >  2 files changed, 1 insertion(+), 3 deletions(-)
> > 
> > diff --git a/drivers/usb/storage/debug.h b/drivers/usb/storage/debug.h
> > index 6d64f342f587..16ce06039a4d 100644
> > --- a/drivers/usb/storage/debug.h
> > +++ b/drivers/usb/storage/debug.h
> > @@ -29,8 +29,6 @@
> >  
> >  #include <linux/kernel.h>
> >  
> > -#define USB_STORAGE "usb-storage: "
> > -
> >  #ifdef CONFIG_USB_STORAGE_DEBUG
> >  void usb_stor_show_command(const struct us_data *us, struct scsi_cmnd *srb);
> >  void usb_stor_show_sense(const struct us_data *us, unsigned char key,
> > diff --git a/drivers/usb/storage/scsiglue.c b/drivers/usb/storage/scsiglue.c
> > index 05b80211290d..df4de8323eff 100644
> > --- a/drivers/usb/storage/scsiglue.c
> > +++ b/drivers/usb/storage/scsiglue.c
> > @@ -379,7 +379,7 @@ static int queuecommand_lck(struct scsi_cmnd *srb,
> >  
> >  	/* check for state-transition errors */
> >  	if (us->srb != NULL) {
> > -		printk(KERN_ERR USB_STORAGE "Error in %s: us->srb = %p\n",
> > +		printk(KERN_ERR "usb-storage: Error in %s: us->srb = %p\n",
> >  			__func__, us->srb);
> 
> The proper fix for this is to use pr_fmt and convert the printk to pr_err().

Yeah, that's the correct long-term fix, I think someone already sent
that in for the usb tree, where I have taken this patch already.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190821133245.GA4624%40kroah.com.
