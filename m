Return-Path: <usb-storage+bncBDGIV3UHVAGBBF5MWWFQMGQEIWRMC2Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x145.google.com (mail-il1-x145.google.com [IPv6:2607:f8b0:4864:20::145])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0914316E8
	for <lists+usb-storage@lfdr.de>; Mon, 18 Oct 2021 13:10:17 +0200 (CEST)
Received: by mail-il1-x145.google.com with SMTP id b10-20020a92dcca000000b00259331f4eefsf7678938ilr.13
        for <lists+usb-storage@lfdr.de>; Mon, 18 Oct 2021 04:10:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634555416; cv=pass;
        d=google.com; s=arc-20160816;
        b=yJiw4wqysGY1RzfYrcVUtfLHgy/HeNRe/1cMWSd195BpJDNk//JkO+bIbcp9g9Epf4
         EonzaMmQnISTuIhhJ4k2UcF6lLDs1uvHyBb2l9ePR04U201EKF5l5ZhcCr21CycHeOI6
         dNr1bpfISgpH0JVwuPAzlDzNZOwlwEYwqRZczv2Z1zb6g17Q5U0oHNnSN5FVbmy3n4yF
         e4aZTsg/sRu80igWD4eZuD1ia/3pahf19tHy/PwPp3kOY3tVzmsGkrd1oiEpgLbL4Wvm
         2BhHavxK+N8Y8ZddEUnrNu0ojMxCzRCf0rmYjRFDfvZo7oQ8Z8yaj6687QZIZWsEloxy
         jKPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=/AwAL5lA5T6eHbxVeOLcgpTA4vRwzEP0Vs6zyUKtndI=;
        b=cSGpF+khkMaPsh1Mo9nH8SdDMc85KDmLemfJDoA8Pg+C1wkEIevE+PSmLa2UDcNInx
         LewpkOBi2AAQg6ScQP4ccFpT+E0fvNCRj++bTZDDuE48lK9scaOf3Md4QN1WBR22MftI
         T3K6mEW+5jNmGeEuIJOuMpyt8eA8S0mlnJDhDx9NVKlg03rq8bqSW5Bd3i9wuEMlhhqP
         nnYvH+IOhX7/sF96g0WvAXupSM94abPXYvGNq54+vqdkGbyffOTX8S3i3alxPtZiFier
         SJnJWqx3RBc7Rxf/zc91nUcVQiQunB4Nv7T6twBv3eo7aKOAobGjouyPL5b4g/OPgBWM
         LJ4g==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=1PgQoqjf;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of bigeasy@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=bigeasy@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/AwAL5lA5T6eHbxVeOLcgpTA4vRwzEP0Vs6zyUKtndI=;
        b=k4yhN+WYuRTGPqqA3uJ70FJL8suXkMSCJSv9rXXmsCj6umkHtJQWGQlKXELsm9Rh0j
         GIhxHKed0PjXaW+15/TAS0sYBdgVX8PJ7h67wCVhMfSZeNncwgpziOVW3LSMY1vr5lTJ
         jEkn37XWveV+UiF2f+tWoRO1Q0FhCXikxFvFc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/AwAL5lA5T6eHbxVeOLcgpTA4vRwzEP0Vs6zyUKtndI=;
        b=0bb4cQ/9S9WLq+lkTTNo3TvHqC4ksyKBmn3wuKTFfFf2PMLLHnBEipm7YspJ9gTTwv
         1aSIULy1fd7On2iKavf9Vz3MOU6+eBum6k/VN2+lifRdKwhVUsF9VLEfJZjWpxG+pToh
         /igk4vm5t7E3OUeqx0bh76UdmVSo+/9FqOYRHQg2qUoqyrzoBEvSQax06fXCHBKeyRNp
         f1HL7/7qOl6JzvUnO0tN2yKH+wnGB4MKdGnQ5bxtVhoc49OXXKB7l9pM7WJOAHYV8AUC
         NlcZyl/0VUkkjJ3K7+5WUPurmq1GYGXRSp3GT/l+GZDhxqsA1HmW8T1EwfbNiga1Hmbw
         wAtw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531AX5blRo99pDRnLMY2e0v7/0UNL27RIZq5zHjNxrvTShyvR314
	Vb1BmNEG3nBnKoc1rDExT8/16g==
X-Google-Smtp-Source: ABdhPJx5TcBssjGLMBBqb9ea8hhppwcUsGE3yWf5jmKCTNMHyGFehas/0HPVixSjWMG5gjhu67PtSA==
X-Received: by 2002:a05:6e02:1e0c:: with SMTP id g12mr13593085ila.260.1634555415925;
        Mon, 18 Oct 2021 04:10:15 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6602:17c2:: with SMTP id z2ls2836664iox.7.gmail; Mon, 18
 Oct 2021 04:10:15 -0700 (PDT)
X-Received: by 2002:a5e:9612:: with SMTP id a18mr13394351ioq.57.1634555415471;
        Mon, 18 Oct 2021 04:10:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634555415; cv=none;
        d=google.com; s=arc-20160816;
        b=FJOeeOOPZljPinfF2KkOGTwM87YjWaFLUgfdLo63z52+zGIvJhRn5Eac1x6xhGij2+
         sAFxsYPFv5w97YeWY6o99KqJ5AWpO4N4wF+I/1c2HMnz903s2/SXyxZ8iUYI5CrUZsWl
         ejLtYhPcGk4naRHNn/9wCdHM+xETsDIKQ5oWXj5xFjpx2TuvZtEC55RcklFmg1co5El2
         xtStprBHFeBXrAM8/Ay7SyV7aKCPEz6Yf2fT520Db8++byWueIzOSOJM4BkdgR7QT4nE
         f78DM0Q5QbRLGzdrw5OjvUuQmbmSCJIOHrU9rRJPzhiWHQeumJLuVtt6lqKYs8mFAC1+
         EkjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:dkim-signature:dkim-signature:date;
        bh=deXCoMgr7+8KQRCM1PBmbBScsjhCSW4Jg7dpZpOle4M=;
        b=UoThFIR3vZaLuu8veztCrdwCuXDiIUVM1e6Qzacg82orkSWT8Kk17gUqXFHZXkQ7o6
         Jjn0cqFF1C0akTdOD4Mf3Y9saa7KfJMWAxShliy2kIDAkdlRdLLsaKYoA2CwxtibUR9U
         CGscwiXBQ2WZKPOmno40t3it4uwn2RWKmNnaelFnWduMaMNww5fIwW5KJ5jbeXVruPPR
         nBHIuFZEHVAwI5PPRdVPabvUrU6MudA0aJpBTZsFideaJErGzFzyNIWtXPNrndhl6UZv
         Cj6DW6Aa8cvGbOz0ytrOT4sXXTinNuHgpUksir6DuaDefzL3jfyu2TcmoRu6FSmE4TMa
         Qr9A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=1PgQoqjf;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of bigeasy@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=bigeasy@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by mx.google.com with ESMTPS id u15si13959786iot.3.2021.10.18.04.10.15
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Oct 2021 04:10:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of bigeasy@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Date: Mon, 18 Oct 2021 13:10:12 +0200
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Bart Van Assche <bvanassche@acm.org>
Cc: linux-block@vger.kernel.org, linux-mmc@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, Jens Axboe <axboe@kernel.dk>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Christoph Hellwig <hch@infradead.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [usb-storage] Re: [RFC PATCH 3/3] scsi, usb: storage: Complete the
 blk-request directly.
Message-ID: <20211018111012.ktlshq3uez4v2hmr@linutronix.de>
References: <20211015151412.3229037-1-bigeasy@linutronix.de>
 <20211015151412.3229037-4-bigeasy@linutronix.de>
 <a6354cfb-753a-8376-b96c-f35fda9b9b8a@acm.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <a6354cfb-753a-8376-b96c-f35fda9b9b8a@acm.org>
X-Original-Sender: bigeasy@linutronix.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=1PgQoqjf;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 bigeasy@linutronix.de designates 193.142.43.55 as permitted sender)
 smtp.mailfrom=bigeasy@linutronix.de;       dmarc=pass (p=NONE sp=QUARANTINE
 dis=NONE) header.from=linutronix.de
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

On 2021-10-16 14:21:37 [-0700], Bart Van Assche wrote:
> On 10/15/21 08:14, Sebastian Andrzej Siewior wrote:
> > +static inline void scsi_done(struct scsi_cmnd *scmd)
> > +{
> > +	scmd->scsi_done(scmd);
> > +}
> 
> How about leaving out this function definition and open-coding it into its
> callers?

Let me reevaluate the situation with your series. I saw that you
provided a scsi_done() function.

> Thank you,
> 
> Bart.

Sebastian

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20211018111012.ktlshq3uez4v2hmr%40linutronix.de.
