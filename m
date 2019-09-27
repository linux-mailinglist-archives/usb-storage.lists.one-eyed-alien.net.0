Return-Path: <usb-storage+bncBD6LRVPZ6YGRBHVRXDWAKGQET7LHVGY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x745.google.com (mail-qk1-x745.google.com [IPv6:2607:f8b0:4864:20::745])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF9BC070F
	for <lists+usb-storage@lfdr.de>; Fri, 27 Sep 2019 16:11:43 +0200 (CEST)
Received: by mail-qk1-x745.google.com with SMTP id w7sf2727652qkf.10
        for <lists+usb-storage@lfdr.de>; Fri, 27 Sep 2019 07:11:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569593502; cv=pass;
        d=google.com; s=arc-20160816;
        b=verxUeqBiRgDlMmTLPuaoUldhTBe18Srdjj3BPTLi+LyrlSVjDgzlUM5FwmXgIMAVK
         dg5/b+VRX3Nc4CGbL+AGR+dhMSp5kuyKqlCqCFQfyy3k1m9aQ07LGN/FfRSGwBNvxxLN
         VkH0VCK0jtjijFPq8OMT4hEujoOQ+qlcToZ5UYO8N84R+FIOYkZnkpdkpAzQiBlC007z
         +oNsOsiGJbol49xHwaLvjzchW1EzDIsN3keAME3D+/SqTcWCdKlnNMhA7MzPegZ+VMDE
         lrJI7bmcTpggP90GHKHPGSdsWqHQEB6HjWnbKOeTNIn3+r47vFPs280VYvxCyRQJnU8Z
         CZ7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=aXRRpZ0QZI54HycDaM/t+SLMOPf/2GBsPhw+2hxhn5c=;
        b=Jhq4W8A3VzQ7S9YEllxoa7ZLTsOOyN5s0/gA4Kh7tyZUrLPCipH6Olm89JeC+e9JWI
         63KT2AE1vuFPrESHJMceGKM8axLmJNRacmaEtXTBAtUk+MTcMxiuCoyA22NJFCISZhXL
         VhTTzivzPOV8AS+gtXU4cszuR0M70Jf2veZeGwIaU4URzRgk6mHRghCQ+xm+4TaP2O+k
         kaO7lhUDtQwclitCVclsjFEBdZPdLVkZdiC74ruU/SNQExGpLUym1gUZbkoQKzoBKZdu
         kp2CjlryC83SsmO5wgX1IijtuUf315zkXHIqk4fv3Ss4zGxTuEi4mMry/3THUDt59N46
         h2XA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5d89addc@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5d89addc@rowland.harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aXRRpZ0QZI54HycDaM/t+SLMOPf/2GBsPhw+2hxhn5c=;
        b=DuVIWJ/xbl4VXtRFZPAFKV+U3GX0zNN+rlaJCHSFw9/ppAW1naGM9T0XPoxjvwaSI7
         655JelBiFXx79OO6QOFfSua7Qheo7JazaWI4BQoMvo6dyuw5SKxdirHUly+8k5ON8M0W
         uk8u5bCOvevxBa7go90yWhV1mZkIbUMC9/meQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aXRRpZ0QZI54HycDaM/t+SLMOPf/2GBsPhw+2hxhn5c=;
        b=V4Ml4ev8ykpHSUsDEjOeWVWHoJ/iPZyL2+joedJVe4bCWvGcGrHwR/QlY4x0iepHjv
         X+lOg7/RfFRH0Px86HAuevc3nNTn2UE0vIeCNDMLaFyiUNCEWIfFQtnf1zlTfEjyL5y+
         S2G9B384/uHTjfUEsfj5qgP19+/JonJwDonqthPV/0NOY9BoR6VLdpmBiTIenu+ksxWk
         7vG0J0oEnIOIA3ym+8VOFExXpP8MJaJYQofuJrN+IcIMFgnLmk1E36ofjTOGmNq2uHJM
         7garW0BqDFMuiyNhg9YojLZPkp7DLE3NQ6M22CBlqSa/0gmBZEVf5ouspY2ZQJJnGrre
         l/Vg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVn5ExdaGHxTUbbihhhGbJ24T4aP/A4NGgd/jxsgGqIY8NZQG5o
	m4POyY9ThLX0vF78j5Z2HQRpCA==
X-Google-Smtp-Source: APXvYqwpsuGtka5vkOzNBtLr8xcykqeygDR8RK4Tmmb3VwWHevzKovlXbVG2BxUtERUuojgyEhqgiA==
X-Received: by 2002:ac8:6982:: with SMTP id o2mr10124919qtq.143.1569593502335;
        Fri, 27 Sep 2019 07:11:42 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:2c55:: with SMTP id e21ls1875869qta.1.gmail; Fri, 27 Sep
 2019 07:11:41 -0700 (PDT)
X-Received: by 2002:ac8:2d8b:: with SMTP id p11mr10192911qta.220.1569593501831;
        Fri, 27 Sep 2019 07:11:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569593501; cv=none;
        d=google.com; s=arc-20160816;
        b=esNW2YgTemmFdoSiw2GsNkMh9Wbc9MlQHHMIJAAU0QjrJbqNXegWuma/1wLVwotY+q
         yG5srIvon9gIDzXaZ0ApQs9t/qGFk2tm2ZaDApocXk8tz+eGx1GDr4r7FPOt0fmcPbsx
         sa4WvSJqRVx9gFx3wYJolVoDYVMJtC9BY7MeblkdFrsYnjB4J9Hxv0H7dvn1LQYNy1Dl
         7ahBvroVBd3+sRCVYQrdetrvM6Jk+Z+NpvTv2Vcnuz6IQ3r/j24LMkEBCp3hsdFl0ZDT
         tc3Q97WvgXTEp5FP4quFcwAs3sggRFqsYRPd6FHl9zMBsUmBvv8MqvFnqE5cbQoPFa9J
         6PQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to
         :subject:cc:to:from:date;
        bh=aXRRpZ0QZI54HycDaM/t+SLMOPf/2GBsPhw+2hxhn5c=;
        b=S/S6ertadlbeAWAHgbvA4RKB85+TdC0I837X/SvNx/zP0qYl3sNmd6A9MyRXcZtaip
         tmBGpSIz2Qq8MgbJKCjHkMLyfpL2CKUNm0fzah4q2SyXkcrM3mDTyS00F6a9/9x0W+4C
         Fl+TohP1uzucGZxKc0lapQdtqxsgaWAlCvFPi1Mjb3orYOHC4RV1juPnQcrEVc/MG38K
         HnuWSEb+EgbdKqeCSA6DJPM3qSxAEgBGYv+NIxzxypmRUpOuy6ExGFPrxXz7qQLSgrBu
         /3rwPCeyeLMliF/DWbO6N3MTP6Juu6LGUfzKrcd3WccxodhqhuhA7j9d8ds926s4SN3F
         m0JQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5d89addc@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5d89addc@rowland.harvard.edu
Received: from iolanthe.rowland.org (iolanthe.rowland.org. [192.131.102.54])
        by mx.google.com with SMTP id p5si4851435qtn.234.2019.09.27.07.11.41
        for <usb-storage@lists.one-eyed-alien.net>;
        Fri, 27 Sep 2019 07:11:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5d89addc@rowland.harvard.edu designates 192.131.102.54 as permitted sender) client-ip=192.131.102.54;
Received: (qmail 2212 invoked by uid 2102); 27 Sep 2019 10:11:39 -0400
Received: from localhost (sendmail-bs@127.0.0.1)
  by localhost with SMTP; 27 Sep 2019 10:11:39 -0400
Date: Fri, 27 Sep 2019 10:11:39 -0400 (EDT)
From: Alan Stern <stern@rowland.harvard.edu>
X-X-Sender: stern@iolanthe.rowland.org
To: Douglas Gilbert <dgilbert@interlog.com>
cc: Damien Le Moal <damien.lemoal@wdc.com>,  <linux-scsi@vger.kernel.org>, 
    "Martin K . Petersen" <martin.petersen@oracle.com>, 
     <linux-usb@vger.kernel.org>,  <usb-storage@lists.one-eyed-alien.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Justin Piszcz <jpiszcz@lucidpixels.com>
Subject: [usb-storage] Re: [PATCH 0/2] Fix SCSI & USB Storage CHECK CONDITION handling
In-Reply-To: <631aa72f-4eee-bb5d-a81c-62df3a5a09e8@interlog.com>
Message-ID: <Pine.LNX.4.44L0.1909271004470.1698-100000@iolanthe.rowland.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5d89addc@rowland.harvard.edu designates 192.131.102.54 as
 permitted sender) smtp.mailfrom=stern+5d89addc@rowland.harvard.edu
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

On Thu, 26 Sep 2019, Douglas Gilbert wrote:

> On 2019-09-26 7:57 p.m., Alan Stern wrote:

> > PS: The correct term is "residue", not "residual".  I know that the
> > code sometimes uses the wrong word.
> 
> Digging into my T10 document archive I found this cam3r03.pdf :
> 
>    − cam_resid;
>      The data residual length member contains the difference in twos
>      complement form of the number of data bytes transferred by the
>      HA for the SCSI command compared with the number of bytes
>      requested by the CCB cam_dxfer_len member. This is calculated
>      by the total number of bytes requested to be transferred by the
>      CCB minus the actual number of bytes transferred by the HA.
> 
> CAM is a now withdrawn T10 standard from the 1990s that was influential
> at the time. FreeBSD's SCSI subsystem is (still) based on CAM.

I was going by my old copy of X3T9.2 Project 375D Rev 10L, Working 
Draft, "Information technology - Small Computer System Interface - 2", 
from back in 1996.  Yes, it's thoroughly out of date, but you would 
think that the nomenclature would still be accurate.  At any rate, it 
includes 24 instances of the word "residue" and no instances of 
"residual".

On the other hand, my copy of X3T10/792D Rev 12b, draft proposed, 
"Information technology - SCSI-2 Common access method transport and 
SCSI interface module", dated 1995, contains 24 instances of "residual" 
and only 2 instances of "residue".

So I guess this was never defined precisely.

> For a more recent standard/draft there is fcp5r00.pdf that uses the
> term "residual value" when defining its fcp_resid.
> 
> The only reference to the term "residue" that I found is in CAM: an
> optional message: IGNORE WIDE RESIDUE .
> 
> So I would leave the naming up to the patch author. It is pretty
> clear what is being referred to in either case.

True enough.

Alan Stern

> Doug Gilbert
> 
> 
> P.S. I prefer "residual" because it is more flexible being both
> an adjective and a noun.
> [Ref: https://www.lexico.com/en/definition/residual]

