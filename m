Return-Path: <usb-storage+bncBCELFFEP7IGBBMOJ5XUAKGQEQWJ5HVA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x347.google.com (mail-ot1-x347.google.com [IPv6:2607:f8b0:4864:20::347])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3ED5D129
	for <lists+usb-storage@lfdr.de>; Tue,  2 Jul 2019 16:05:39 +0200 (CEST)
Received: by mail-ot1-x347.google.com with SMTP id f11sf9037958otq.3
        for <lists+usb-storage@lfdr.de>; Tue, 02 Jul 2019 07:05:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562076337; cv=pass;
        d=google.com; s=arc-20160816;
        b=KxEqnobINa2akJRimTSKIMcQ6qfyGwgT3Vrm1gRBqzqsAyi0q0J7E34KWmX0MmemM7
         i7t6+ueyIwscRwGRgD4kOr1ZBzmlyx1jCTEyG5OAziIu+C6ix27tqZc3f+PgHYEzNNE9
         xJUfTyWgOgldeCOk5JdgIPQ0omLBATTwyosTq5/FjGx5MVVbq3uNrdJlr8b/yNOrt0u1
         zuSbbR0Spy0x6Jo0m7tuFMB/ygjVvkF9CzxjFHon09Nu+xMXQlg/L4W2oHJePgnEoM1h
         plDKZw1TjCuz/NxjxaP2vjfY+7NO4VS0wxT30LNuCnCOOoCMdLZQySFRlFgi/o6tM1Xw
         EjjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=FPUP/pMW2xO2iD5h91UD7T4WsGU6Js3yTMDozBFF3RA=;
        b=MirOEUVSoroN2jUBtce8RHXaCUJbKW1K1uGJouLZaBFJYrsAZlU1gEZR0I9d/3hmNU
         2Vamjb4YwxeW1felO7QLW5QJTi/CtDKr8q7XY6umarCAqq8WAcbP2cm5xVXCYDC0XJYo
         5RhL8mBOjSJzYtFETVKQmqQceQV22SAAmpzInWQ1kYTtzoT9R7k/lXOuT9pIkzDScpnY
         IlFgAfQfHJCLgwqfXuONtWS7HBHd0g2yCEaAa6H6VOC6/IOil7WUrpv3k6VuzOgOJunP
         lwq7uL+hRYoJ6Rl5MRaJlAwKvrmtQPw3uRpbYIXTAY3K4Mk+Gw4jz/GZPrjC49qOVCKi
         odsw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Lbh6hO5I;
       spf=pass (google.com: domain of suwan.kim027@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=suwan.kim027@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FPUP/pMW2xO2iD5h91UD7T4WsGU6Js3yTMDozBFF3RA=;
        b=kbdokSLvF3ZbMFyJFzq7XDlx6vMPi9PEWyXYeEyOCETsVYeTcWdZKpozddi/ffdZcI
         I9GJLlNuC4TRFrTEzp7BodvUQUO3DCxoNFfSru0tS7niln7JyS5ZnHrtQ9+KEf9yGlga
         TM5EkqhxrJfgH/DuNSPBQsiNtAD5AYuT4Y1mE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FPUP/pMW2xO2iD5h91UD7T4WsGU6Js3yTMDozBFF3RA=;
        b=gDcm81w47c20fAq3rJkWyqwUJNSXCxC40AvVcqvbJMKdcdkIxxQwadVO4i2+tpi8Io
         3caWRV+2eBZB90yPWJmayJQwc0TQV+x6dPnUOyDb6qwyz96pQkONS11mNTT9w8SJVXDs
         zK7n3rSWteYEhM7Fj/0FLM2Bv6crij7BbPlo7U+kK1Emk6QcDnKjdPxjpPZiJPiv/bd1
         YdrmjTx8Kv+qslU//jXkeQljezSndJY6DdC13Jt9TC1nLPzS/C4YjzTYVjeDKVQbk7HO
         lIgwaMEtKpM97exCsPLW8yhzEbj4jBUqgOJ2C482wq7HfUjg3Mnh3olDU78p0P4sj+ub
         QqEw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXkB4ZizrdPvTNQRPjeFnKpzK6Cson9kLUfMDSdiBHzYVm/PG/n
	pbsi/FBlo8/ZsdwM/GpWBhShWA==
X-Google-Smtp-Source: APXvYqxgt9cD2orwUp6p7fqXKEAqgC+exeId21GV5jHTS07Ey7msTwJ9XeiJQ8NwfH3sygX16/6u+g==
X-Received: by 2002:a05:6830:18a:: with SMTP id q10mr22419418ota.114.1562076337602;
        Tue, 02 Jul 2019 07:05:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aca:dd09:: with SMTP id u9ls893156oig.6.gmail; Tue, 02 Jul
 2019 07:05:37 -0700 (PDT)
X-Received: by 2002:aca:4d84:: with SMTP id a126mr3303436oib.23.1562076337411;
        Tue, 02 Jul 2019 07:05:37 -0700 (PDT)
Received: by 2002:aca:c64e:0:0:0:0:0 with SMTP id w75msoif;
        Tue, 2 Jul 2019 06:50:00 -0700 (PDT)
X-Received: by 2002:a17:90a:2525:: with SMTP id j34mr5941394pje.11.1562075400244;
        Tue, 02 Jul 2019 06:50:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562075400; cv=none;
        d=google.com; s=arc-20160816;
        b=QfwSYQaVEtg7CoxCQS3MgG33Y6OMRG4MR0dkHdMtOrVXD9YQpwPg1Vzbg3t0OeeSL2
         zDV19iHww+NE/sDd/VSHVfGo651Gc1cnllCWcFVUeovkv3Hfkc99UHjOxSY+9wB5TeKb
         g2GsXx4TCksnnIspEu5tyRGAYpD2QHtZpnUAKBBfj5zuKuoIa5E7KhLK1WjHl/9KojSE
         8OumtZDUyJQVasM6FwA0U65nhtTDfJAFz1jT/0Ip8BirmrAXVeepbjXKKpr9b4N5QwyJ
         OuJTEe6dwp/k6BPiWJa5mOTNiCC7g4aL0eKrxHytpkYEtQpuo0aQPrPY4Ejmg8bx09Ag
         abSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Q0bjQEkxGonB21AHtKl/d7V91XCD8lCBxRLvpB5sJik=;
        b=RKFXLBXYOlvysxWr3yz4LYucZROT8SvDqA9kK1bL5w61Q4f6uHxq4PkTKe2lR/OB8q
         Ccreci18JhaEXf/n+n51MFy/ZhdVlHeOMXWeZ9AKu1KM87UuUq6xZ8vW9MRPovUgcbXI
         lA4+mDNEe96aHQu84KX+oTKt6wuvqNCusa0PjSNzIeorvjWcmmV/TGCF0wBnaJoFuh3v
         7EfD3oMxxqXakmv3WvG2K1wvn7zUdAAHHI8AOWRdpl/Nkt8dfOMUxGCD+VZ7u/UkTdhf
         mwY8AASB3Jphqb1EWQGCuusO7M1NzcXJjKty8UAeMHxNt8Qdv96w/EKDDKyrxCrz3dHR
         KQwg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Lbh6hO5I;
       spf=pass (google.com: domain of suwan.kim027@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=suwan.kim027@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id r3sor16229709pls.29.2019.07.02.06.50.00
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 02 Jul 2019 06:50:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of suwan.kim027@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a17:902:be0a:: with SMTP id r10mr33577003pls.51.1562075399997;
        Tue, 02 Jul 2019 06:49:59 -0700 (PDT)
Received: from localhost.localdomain ([125.142.23.13])
        by smtp.gmail.com with ESMTPSA id b6sm14312137pgd.5.2019.07.02.06.49.57
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 02 Jul 2019 06:49:59 -0700 (PDT)
Date: Tue, 2 Jul 2019 22:49:54 +0900
From: Suwan Kim <suwan.kim027@gmail.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Alan Stern <stern@rowland.harvard.edu>, shuah <shuah@kernel.org>
Cc: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	"usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
	Christoph Hellwig <hch@lst.de>
Subject: [usb-storage] Re: [PATCH v2] usb-storage: Add a limitation for blk_queue_max_hw_sectors()
Message-ID: <20190702134952.GA2414@localhost.localdomain>
References: <20190613171112.GA22155@lst.de>
 <Pine.LNX.4.44L0.1906131317210.1307-100000@iolanthe.rowland.org>
 <OSBPR01MB359051D6F83101432E0F2549D8EB0@OSBPR01MB3590.jpnprd01.prod.outlook.com>
 <20190617062222.GA5069@lst.de>
 <TYAPR01MB454412603157D6DDCB512092D8F80@TYAPR01MB4544.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <TYAPR01MB454412603157D6DDCB512092D8F80@TYAPR01MB4544.jpnprd01.prod.outlook.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Original-Sender: suwan.kim027@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Lbh6hO5I;       spf=pass
 (google.com: domain of suwan.kim027@gmail.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=suwan.kim027@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Jul 02, 2019 at 10:07:42AM +0000, Yoshihiro Shimoda wrote:
> Hi Alan, shuah, Suwan,
> 
> > From: Christoph Hellwig, Sent: Monday, June 17, 2019 3:22 PM
> > 
> > On Mon, Jun 17, 2019 at 04:17:43AM +0000, Yoshihiro Shimoda wrote:
> > > Thank you for the comments. So, should I wait for getting rid of the
> > > virt_boundary_mask stuff? If I revise the commit log of this patch,
> > > is it acceptable for v5.2-stable as a workaround? In other words,
> > > I worry about this issue exists on v5.2-stable.
> > 
> > It does exist on 5.2-stable and we should fix it.  I'll plan to resend
> > my series to fix the virt_boundary issues for the other SCSI driver
> > soon, but we'll still need to sort out usb-storage.
> 
> I guess that getting rid of the virt_boundary_mask stuff [1] needs more time.
> So, for v5.2-stable, would you accept my patch as a workaround?
> JFYI, v5.2-rc7 still has this "swiotlb buffer is full" issue.

Hi, Yoshihiro,

I have been implementing v2 of this patch according to Alan's comment
(allocate small buffers and urbs instead of one big buffer) and it
takes some time. The implementation is almost done but I think it
will take a few days or more because of the test and bug fix...

Regards

Suwan Kim

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190702134952.GA2414%40localhost.localdomain.
