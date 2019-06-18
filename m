Return-Path: <usb-storage+bncBCUJ7YGL3QFBBDUTULUAKGQEWFYPFBQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x446.google.com (mail-pf1-x446.google.com [IPv6:2607:f8b0:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id 673814994B
	for <lists+usb-storage@lfdr.de>; Tue, 18 Jun 2019 08:49:52 +0200 (CEST)
Received: by mail-pf1-x446.google.com with SMTP id i27sf4035955pfk.12
        for <lists+usb-storage@lfdr.de>; Mon, 17 Jun 2019 23:49:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1560840591; cv=pass;
        d=google.com; s=arc-20160816;
        b=PSSKZREDwOanlnoYl99Yeh9RWSRUnscIWHOxrCmk3+jKOtZ5S8f/hNMklZOkyr9C8L
         SobBHhJ0WZmrxmcnWvUPEe6R2LTeAIOeO9YKmh9k1h6xI3+CBYvFkL/ji97VGvUd4me4
         CCCiYmETtbl/FYrKYtKvlJ0XyDwNKvazndRcaUt4ltyyOhuobJEb5vyyi2n95wnlSO49
         0895Gs2dUSnBRXsFXoK40C2Yi4+Uze9HspicpE9vrkbwKZvywaFJBOX/lnYfL6q1eJv6
         c1fYokZ3Lca0kz6x663+guWMJY4D86LjGBCU/cvi2p0lA2oKymRUwtrxnpxhBrRklhy4
         93fA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=b/KMs4P5Eb/ocQ4Y7oTGJSnzpA45a2kZtYPWeZtUQx0=;
        b=wZqZ6htW/gzxchB8jrNRG3qMX70xZlM8JujcOkAr26C8VBb5XyTNi8yFKWgr53hylC
         ZhaXfKaigKVPaxrkl4FyXFdeeBDWax23Znch3y9XN+WpZoaQkgaBfnEOLkIjWLzKqRbV
         6X6CiaZP3NMebidWwIiTI5tVJF/QyYdxBb/UNAG3D2DxINzMjEwV/mE6dVS8rn69WvTf
         I15BH3mTuMg9iQG0NK7vrOuAMZfOKqCGDIgCU8JMuzNU6CQVv6JPt+KHSJGS44/XMvxJ
         gxGNtTEI1T+Iv8E1jqd5JbEZGzEHpnUjskSYdNIwNT4ZAULT3s+IdxswOUribRX4ZCNn
         n8Bw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iS19t7OM;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b/KMs4P5Eb/ocQ4Y7oTGJSnzpA45a2kZtYPWeZtUQx0=;
        b=Yx53k2X80im0oIOfEWykEeZKDHOhgVIBwuY7yoVEOiEaMwuzBXk1KKtIN28mgtw6C9
         zKKivLmk4UcmnKVDZO806KFqa5V5FPn8JZmKD+Wsv/Mpzcyfwkv52JtNXEPbPdU/9Gko
         ux+wfDjOH807UOrlC9nGa/uI6KEgAW2Jos/DU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=b/KMs4P5Eb/ocQ4Y7oTGJSnzpA45a2kZtYPWeZtUQx0=;
        b=JfvLt3ywMmFkGAzyYzWzkGVP3VU6J0+K5xOkQEl4JzxzisRJIuDRKvCAKH3TKdEo+9
         nY108SAaUkIONCqedeLkHtoHvjOA8xIGu1L07Xb2b/PVYJyzbwgXS7fLzrnE4D6UrbfO
         0oFE5uFKnf9cgf3h26I8k7cnJYuQZMrGDS2f9/upayHZRVeaYOt+XNfkhli7/rE3GcGU
         ZHYJGQWQSWJCV6rz/LgahmxHFLoMYHuKWpPvgJPmWtzW846yonV/TjPOV3/uyo7Hz07u
         7eI/8eTlSdl8FdSADu7BWeWfSKQZquZyCx8dMh8VBUbA6YyCEx0RNN7KFvFPJeSZ81so
         oxKg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVsDJXtUHaRYwL15W6LL0d4+1DSIFXxGUTUgPfkzQ3U8ICvvMyX
	N2O3B/4VLWWbPBxrPg/YWtvVuw==
X-Google-Smtp-Source: APXvYqxx/4/+66jf4VNwIP8C2MCxlMfmN64bAJKijZK0AAYqCc27KCxpHTMb07esMeJ6jC68aHI7Ww==
X-Received: by 2002:a65:418d:: with SMTP id a13mr1228477pgq.332.1560840590974;
        Mon, 17 Jun 2019 23:49:50 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:d412:: with SMTP id a18ls4247704pgh.9.gmail; Mon, 17 Jun
 2019 23:49:50 -0700 (PDT)
X-Received: by 2002:a63:8f09:: with SMTP id n9mr1221732pgd.249.1560840590426;
        Mon, 17 Jun 2019 23:49:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1560840590; cv=none;
        d=google.com; s=arc-20160816;
        b=Ns9rD5N2HccTee6p+DxZZwHGYcP4DGp/X858A6n1KlUgJgl8bSuVMbKWZdr2sC91ug
         v/BtJV75JyFI9jOeJ1fqOFHu3AaB+FncseUPGP7sU2f+3vQTKW/YCuRIvaTIZ00Ew+HP
         2H5m3dp3Ir792Vxu9GcF143/f9Sr/2fur3yM4TCvlZY4CzZX0MwwIRkXZH6jzyIQa7cD
         iAPuzIfGPFkcCKC8iOvlvkNtxaQNhq3tDcPVZsRP+I+ccDcMWtJAutYPbMxqF/kHnHRb
         eohj+8cxPlFr3mQfGXPBobc2tkKqXf+o/5p62KK5JvCrm0oq+9voW3SpVSrdw4+14x+i
         MBFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=9ZeY8l/aDyPjOnFI+cpENqTcmgpvHmV39qpM+zF3q3I=;
        b=MEKNWUXTbmzDWo9/mUhP4NsuIeqKL1AfII0OEP/Vhr1in9CaQrrPj42nrkOYV5iket
         EPMt3gy8xah9PUFuHfke4MtQwnXGKQhcfXNSGLTqolbJos4+zPbN4TLi1+EeudGK2sPw
         FIHkr3stz7nu0CUtA/sB3zWyBO7rxa65bNFWTCdC572/QpriWS5/j9cM8WTWPuuspZVf
         fYSqTRkGNi79GOMd7/SiiXwskvnk8yfSHYpUJ9faFU3OD9w2hMUeDXHoM89ERZ6UiJ3g
         akMoSMZLEIZ4ZbcDF4+DVZ5L9JDdIhFunJ8nFnN5thPOQraFuA9O2zQfgJqL7tx4W/2Z
         iSSw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iS19t7OM;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id l23si13287416pgb.333.2019.06.17.23.49.50
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Jun 2019 23:49:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8566F20665;
	Tue, 18 Jun 2019 06:49:49 +0000 (UTC)
Date: Tue, 18 Jun 2019 08:49:47 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Marcos Paulo de Souza <marcos.souza.org@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
	Alan Stern <stern@rowland.harvard.edu>,
	"open list:USB MASS STORAGE DRIVER" <linux-usb@vger.kernel.org>,
	"open list:USB MASS STORAGE DRIVER" <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: [PATCH 2/2] usb: storage: scsiglue: Do not skip VPD
 if try_vpd_pages is set
Message-ID: <20190618064947.GB22457@kroah.com>
References: <20190618013146.21961-1-marcos.souza.org@gmail.com>
 <20190618013146.21961-3-marcos.souza.org@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190618013146.21961-3-marcos.souza.org@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=iS19t7OM;       spf=pass
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

On Mon, Jun 17, 2019 at 10:31:46PM -0300, Marcos Paulo de Souza wrote:
> If BLIST_TRY_VPD_PAGES is set for a device, even for an USB, it should
> be honored, so only set skip_vpd_pages is try_vpd_pages is not set.
> 
> Signed-off-by: Marcos Paulo de Souza <marcos.souza.org@gmail.com>
> ---
>  drivers/usb/storage/scsiglue.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)

Where is patch 1/2 of this series?

confused,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190618064947.GB22457%40kroah.com.
