Return-Path: <usb-storage+bncBDGIV3UHVAGBBQNEWWFQMGQE6477X5Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd48.google.com (mail-io1-xd48.google.com [IPv6:2607:f8b0:4864:20::d48])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E21B43168B
	for <lists+usb-storage@lfdr.de>; Mon, 18 Oct 2021 12:53:55 +0200 (CEST)
Received: by mail-io1-xd48.google.com with SMTP id y9-20020a5e8349000000b005ddb44e9eb8sf10348299iom.19
        for <lists+usb-storage@lfdr.de>; Mon, 18 Oct 2021 03:53:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634554434; cv=pass;
        d=google.com; s=arc-20160816;
        b=eRf5YZN+O+NsLlzS7wW6pQylq/3hgF3zufYESJsJkQJnrfkSrQdZsZb2TtHnkHp68d
         mGXkAHw1KvdCFKCZTn2FKNuMDhDDA2PxWn6w8zAV926jbZogFYlZEiXjpOlbs3skTO0s
         XPqX49R52hEYff87N1aEXzfINDVdVV+J2Oav4nYuTkR90QUuRB49SKjK8OkCyE5Z5PAD
         OM1ZKRx+44yw89Iii9TlIHHJTVYPeNDp/aItr2MD/TnSbolahFvkgoHuGa5W8w5KkI21
         xFuWib/JvEOzzgmzED4dOKXLSUAgwVri1DHDVzmjuERo3NXH/lPytZ1eW253iK1r2xVm
         ftKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=99sfsalszwke4UcjEDaEJWbuyOeg2F/VXJ78GtJihT8=;
        b=h1UPZreQY3Cm4Ptf0+hZoIs6rVzB0bZC0UBqxxOz0bCbRaRAKVQsydZLJ3WYsgswfh
         AP3P0Fk1+tUqKLmHAqwrwYB1vmiok1hOFIRAr2O0VLDOxrgdzuWnFaLmTeAClVCdSMxN
         Elc8IoKLpHixV36LOqutCM2GtMJHdV+TU29j6x32bTTqNIt9gn3vwwfy8m/WI6tR75Bz
         Qkg8daBkELkZzVYrqcA3neAJvOG0d8cibV45T+JH1vBk5CD93tuE9Pk+K0x4hKvwJltf
         jQETDRyhs0647tMBk1s0qoy6Nugskmv5dxlxFAftd2jubgpZOoFKPpvLXNGfEl5JDogO
         v1sA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=c1JjhlVq;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of bigeasy@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=bigeasy@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=99sfsalszwke4UcjEDaEJWbuyOeg2F/VXJ78GtJihT8=;
        b=TApGt2w0IeRUI12pa1sPBxfli9UMW99badnkR3F09uaYsyvPQufypIwP05tGvg/nsN
         yUGC2mZ2Hcn42aUlG2Ub+riB3u5bhM2X8ZFo+u262rAQIW7Lywu00oO5S7Wx+mBfBXvg
         XRJcpV/angRmr6Q+sFOSzFM2e/Rj9xbsBDtms=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=99sfsalszwke4UcjEDaEJWbuyOeg2F/VXJ78GtJihT8=;
        b=P4wpTFpKmszupFuxyHmkOhnyNXQUhUehQkay3tJ1kOiFDf7D+0dX1KpCmTwxQwg6qF
         AuMr9XH61qk5kOt3QyoGkpOyVflfDBsS+zk3x4j+jSfTfMSoifrgyEOEh8tFVSL3Fw+N
         xsBFipFLyKFfvm/HRAUC5Od9YGMKQxq/x0y+y2yEuAwFxW9DUOcH/TKRglV1b3EqwHHN
         D+pVGkuTVtAyNxnAqFmsNV54EfcMhkBYhp8SASbEhwfobhY2KsE8F2zDRgABEWLUY6UF
         9DJ2oS+TZCC1nlgHwVWMLlJV2cWd4SWW+eDOuCPhHcC7fpz/yOtZqXzYABDbXLdjI4AT
         Qiyg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533E5Jam22H2NxUYBgE77i7Ot4L8Ig72zJKvFNnkUWpYSYFLCGJ9
	nirzgqVRuFtDNaeI/wQJ2skb2g==
X-Google-Smtp-Source: ABdhPJwV9nPv7/Zb0Mnp7gaBHoUa8gBT0U5PB3s1abw/7HrSK0FEzknRVH+x24yXwqh0qe10/CeiRA==
X-Received: by 2002:a05:6638:258e:: with SMTP id s14mr17857815jat.54.1634554434163;
        Mon, 18 Oct 2021 03:53:54 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:1d11:: with SMTP id i17ls1439892ila.8.gmail; Mon,
 18 Oct 2021 03:53:53 -0700 (PDT)
X-Received: by 2002:a05:6e02:19ca:: with SMTP id r10mr7498842ill.148.1634554433665;
        Mon, 18 Oct 2021 03:53:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634554433; cv=none;
        d=google.com; s=arc-20160816;
        b=s9O2b12mC1xjq09XE2HZdSht5YmRsolfAl9K9/AZ1rgqZJnpPqVs1OAJYmfm0rowi+
         nb05OnS4aSbOSdUQaO29hBRdv4tc1DsbX1b0QX6vj/nN0LvkxXE5LQLYa2/1kgYJGBX7
         mXAPAL7SuWm0pohIh0r8Dr+spfhmiAoDhYHyqadHA5kPrNlKuqV/hFSxICtHRk9JbnWY
         40aNDJ1tkgs2yCYyATMYjX2567qqAibFKNV7B/SSU68vGvPUMCHgoCxIJFeKNIFLtxk5
         +g0gUYgwur6XnGlRn+nHi3hPkG96+AGvT/ZQixUqX2XIWHcJayraQVspMeI866/i/86G
         xEDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:dkim-signature:dkim-signature:date;
        bh=DmyYIQ6/Gn+EjOYyOfOHPKtVvGqXG+QS63gXgRjV3is=;
        b=WkzH+Zutpb4XU6Aa8lnQrPFcZ/Z/CKy2JaCK/w54uFUc9HKte0wFDpH3+IzX4ZrIN2
         uQCxzZUqFUL2Btb1YL2uwNVw9uiqm+SvbG1IBXR1isxlgP2BmGGjhRR9zmsVo2gpbTMQ
         QTfgmSDVqDx4gE9S1kXqDlcGjy3djEY0KqsZtXOwz5YTS5vLSkgmmuDf/R/s3iLQA38M
         l1GDzVy6R6GhKktGkpIjY4MNye+X1a3quyppYp9aktMUXHqcqmI4rxG16JakrKhHfL+P
         iiNbuINjm070432O4CUWGkE3buKJXe+3ocot+D2h9klW/UZY8japCPtUmXJmD6v0Ofi0
         XfAw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=c1JjhlVq;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of bigeasy@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=bigeasy@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by mx.google.com with ESMTPS id d26si14532164ioh.111.2021.10.18.03.53.53
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Oct 2021 03:53:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of bigeasy@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Date: Mon, 18 Oct 2021 12:53:50 +0200
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Bart Van Assche <bvanassche@acm.org>
Cc: Christoph Hellwig <hch@infradead.org>, linux-block@vger.kernel.org,
	linux-mmc@vger.kernel.org, linux-scsi@vger.kernel.org,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	Jens Axboe <axboe@kernel.dk>, Ulf Hansson <ulf.hansson@linaro.org>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [usb-storage] Re: [RFC PATCH 3/3] scsi, usb: storage: Complete the
 blk-request directly.
Message-ID: <20211018105350.7p2exznyn6e2gbtn@linutronix.de>
References: <20211015151412.3229037-1-bigeasy@linutronix.de>
 <20211015151412.3229037-4-bigeasy@linutronix.de>
 <YWmmn4MpTSGHRVOU@infradead.org>
 <20211015161653.muq37x6mkeru6lxc@linutronix.de>
 <e567fc59-46b1-bc83-c90c-199257ff8c93@acm.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <e567fc59-46b1-bc83-c90c-199257ff8c93@acm.org>
X-Original-Sender: bigeasy@linutronix.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=c1JjhlVq;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e;       spf=pass (google.com:
 domain of bigeasy@linutronix.de designates 2a0a:51c0:0:12e:550::1 as
 permitted sender) smtp.mailfrom=bigeasy@linutronix.de;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

On 2021-10-16 19:17:05 [-0700], Bart Van Assche wrote:
> On 10/15/21 09:16, Sebastian Andrzej Siewior wrote:
> > On 2021-10-15 09:04:47 [-0700], Christoph Hellwig wrote:
> > > Bart has been working on removing the ->scsi_done indirection, so this
> > > will need to find a way to interact with that
> > 
> > Okay. So I just wait until it is there. Is this v5.15/16 material?
> 
> Isn't it too late to submit patches for v5.15 other than bugfixes for
> patches merged during the v5.15 merge window?

yeah, off by one, meant 16/17 ;)

> Martin Petersen, the SCSI maintainer, has been so kind to queue the patch
> series that removes the scsi_done member for the v5.16 merge window. So that
> patch series should become available soon in the following git repository:
> git://git.kernel.org/pub/scm/linux/kernel/git/mkp/scsi.git

Thanks.

> Thanks,
> 
> Bart.

Sebastian

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20211018105350.7p2exznyn6e2gbtn%40linutronix.de.
