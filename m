Return-Path: <usb-storage+bncBCUJ7YGL3QFBBU7OZLVAKGQENZNT4AQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x548.google.com (mail-pg1-x548.google.com [IPv6:2607:f8b0:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA3B8B9B9
	for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 15:12:53 +0200 (CEST)
Received: by mail-pg1-x548.google.com with SMTP id c9sf10149995pgm.18
        for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 06:12:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565701972; cv=pass;
        d=google.com; s=arc-20160816;
        b=V273IPcVDusv7UID5y5m9FaVXRuzsKyRCaiLOxi8jTgtWc/06agIWHAO8tHRniJXj3
         odJI25ztPZNQS71i8LTFEL42WgkUL8M/0PGRhvXb+LT9xsiY7zG0lVHJo/SCPLwWOiSJ
         2G4izMCVwxMGsu2PFaRkqE5fJZo9wtBL4Xvk7G0FLfZegB1JebwVg6DIl5PRGepvDdSR
         rMBuPOjiaKdEY1Tupvs7Zkw/YcBzoCa/aqyo2y4NkRlCePOlFjIlsvIhjSSik0kxN+1t
         17VTEZWHK6gXecjtYWeC5CtxNhPMEa5qOvjEerLSiD5n7Dy3SeP2Oz3vfSEBeOFzpFPB
         kjeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ms/qM8XiC73uN8iCbpmBpgpB8McR7itSPRG5UwrEzlE=;
        b=zhf5d7o6oMXlQVWlDi/nGpDMnK8DrUJ2qcLbH0GE5dbckRp9v1vIrjnHq7iTDG0kCv
         9Hun+zTZdC/Wq7+gHZwSKygykZUSThNx3o0wWWy3eiIVFPG4MMpbjO+n/8HIw2zLE+lk
         y3LxsJ9AEn/F2VFtwvIMrA7ssIMIisKtCc3wPxrKFU4dsglGqNLT+EZnpyhSMHqgWkdi
         lcEY+oOiU/nGqZqGEHze9ecrtBKMLtnamWKtrBtg3m24YMn7StX9/QkI0Qh6LsItNYiS
         vJnrpwg7KxQPTl/78WYn5xXUNpShp75DUXcQs3m0xJcUBf6spPfKjRqL78iGhEqMJjrq
         gKwA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NTiK1YkN;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ms/qM8XiC73uN8iCbpmBpgpB8McR7itSPRG5UwrEzlE=;
        b=XOhMY+4cKVModaKn6aHaWeWa38dxoLOSE9k5i4xZu9vwbrWKes8lrZXeWnAZsrv9WD
         iw9PyUvHj3u42ETrvMFUmIchj5kTEuB8ZpB9/0g0xy+lbRk8y8qq4OudYgBvS9gkOAxI
         EIep0tVJ3xDRa2WJ50c6JBLI5k9WSkh2+BVtA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ms/qM8XiC73uN8iCbpmBpgpB8McR7itSPRG5UwrEzlE=;
        b=mLKTEW8Dc1jr+PwJdoNqrx8wXbPJn4T9WG6OudeyQzbgRXFac6OehdqNU3N86JQabP
         hpHJr42vhSwG7/maw8v5pDvXhLXi1EdxBXE3/oQvybmRwTxqVBzLxG3VOvbwnDEllW8t
         1M8f5HzdQpco6ofxtGY5GHRiD7IBvGF2iWMJZnnytTPU+07OOjza8M53OrGtbL+AHLKF
         Q14Q/3mOmBoJJxjuXuNI3A4cZ8+bofZv9Dl1FJgKtYxYoB8pR4jIq3GHcGSzpFm15/q+
         hWNx1sUDdOk3mG+MgkvpkHvftxRkep5h1jSA/Gf65o2gz9lpwlcqjUkp+2BbERJ6bwuK
         Vkow==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXoI8/+etuzlg7EGeBU/jPZETPYlQEvLXE909uweEwmQWGx7/Eg
	VyWey9aF4Be+RuuaM4O+OTtpPg==
X-Google-Smtp-Source: APXvYqwCsyJYDjIt+bs5DITm+cEhQnuNQxjd/Muw8PLjMTqRWpA6jlz3ZoLyg2lxD9Y4vZ594655pg==
X-Received: by 2002:aa7:8d88:: with SMTP id i8mr41618363pfr.28.1565701971600;
        Tue, 13 Aug 2019 06:12:51 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a65:580d:: with SMTP id g13ls22544337pgr.5.gmail; Tue, 13
 Aug 2019 06:12:51 -0700 (PDT)
X-Received: by 2002:a63:4c5c:: with SMTP id m28mr34623281pgl.333.1565701971077;
        Tue, 13 Aug 2019 06:12:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565701971; cv=none;
        d=google.com; s=arc-20160816;
        b=NGQnIm//56pVgi92jgBe4E13/GAJmZZaWytwlqidEkAJeQ7XxR3opCPy5XwYwaSrw+
         HBQn3YsC6VzmMgXlW5wxN+gUTiVCnW4Z3o8Xy5kB658jtggIbu216ypIIvR7HkRHEpYQ
         oOYtO2CS5ceeeJBA1cBYcR7a6Gz76GF9JRYBcCZS0mdgRPMMhkrhDHwJ/7shGE/fnHXT
         VlosHk0OydzFYhu2g3FpPlIYBg8PS/R08I9vAdEPhn9Ie+0xIUj54MAOeBAk0T/uTWVv
         8mocw+Gz/OJ9lAuYDEIjyhG6en7PR29I/e4cJtcV43QPNYevZJvAY4rvEXx6hkfFalz5
         KJ6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=mzto696W6vbP0d9Z2yDaVUBp0BwlD3w3oZK6Egx4A1c=;
        b=XtD1j/a7sEu3+dr3g6voBax/fuBoe67mLbZQcDWvIyLVsUQOMLgOjgEjHzN2fF/P8T
         Og2DHPgnRH/qb7kdZBwls6Q7avuycQMCvDaFQ0mD8a+GRhASV21iC9tEsaULN/u8nkT3
         wkRS8vpti2Dp1Hz8CHikpnOY5+9s3fCaNRsdfr9Nxv+ygdMGLAWUMGdLaM8dcb9S5wT2
         bX1ZO3tf2cGqVnZlgqsUTCxIqN5Hc17JmqI2trGqd82RUE/hMAxCI+/430Pj+KJru1sC
         JwPq/fepo+AGbgaNYif4S6c1A8QEkjIL+JI4LRbqre2MmBnpaEoLhhH+pVaX/nSMNuWz
         8Ecw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NTiK1YkN;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id u70si61821155pgd.1.2019.08.13.06.12.51
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 06:12:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4E6292067D;
	Tue, 13 Aug 2019 13:12:50 +0000 (UTC)
Date: Tue, 13 Aug 2019 15:12:48 +0200
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
Subject: [usb-storage] Re: [PATCH v2 09/10] usb-storage: remove single-use
 define for debugging
Message-ID: <20190813131248.GB16399@kroah.com>
References: <20180716122125.175792-1-maco@android.com>
 <20190813121733.52480-1-maennich@google.com>
 <20190813121733.52480-10-maennich@google.com>
 <20190813124259.GC14284@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190813124259.GC14284@kroah.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=NTiK1YkN;       spf=pass
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

On Tue, Aug 13, 2019 at 02:42:59PM +0200, Greg KH wrote:
> On Tue, Aug 13, 2019 at 01:17:06PM +0100, Matthias Maennich wrote:
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
> 
> I'll go take this today.  The module really should just be using
> dev_err() there.  It needs to be cleaned up :(

Now applied to the usb git tree, thanks.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190813131248.GB16399%40kroah.com.
