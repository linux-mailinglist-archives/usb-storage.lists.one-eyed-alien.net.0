Return-Path: <usb-storage+bncBD6LRVPZ6YGRBZFP62XQMGQEBWPM75Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x245.google.com (mail-oi1-x245.google.com [IPv6:2607:f8b0:4864:20::245])
	by mail.lfdr.de (Postfix) with ESMTPS id 3420F886EC1
	for <lists+usb-storage@lfdr.de>; Fri, 22 Mar 2024 15:38:30 +0100 (CET)
Received: by mail-oi1-x245.google.com with SMTP id 5614622812f47-3c3badee403sf431911b6e.2
        for <lists+usb-storage@lfdr.de>; Fri, 22 Mar 2024 07:38:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711118309; cv=pass;
        d=google.com; s=arc-20160816;
        b=CVp2XfcPCmk75snTFlfiT057pV6NfWELGUUitz68CiOuJ8MsG9VkQyc4FQB28E3qMX
         lVwBq1n6xBd/f123C7KDW9gZFoklG9gBDe8YYaBIyqEyczBhAWML96eJpBsZtYLzrCLp
         77blo7PPBO+IlWG1stGsxBL1+EiczDCgG6ljZCR2nfOLhWkjHZ9/W6DhUSmiXTS5Y7Ec
         pY5IRb4d4xOi+zr0P7LkoDKah4/81jORL/c3rj4e4MhwjEE8FIfvnjKRs6nOwZEPbSLH
         Sg67ei0c78tqlp90qPaLkoz9XhD9QlSVeZifNQc6mdsulXzB1m6kMvMDe//G83RMtcTR
         60uA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Cw8xuYjFnOYapYrX4as1FzVNTaIEyIsCmU+Gaskft8c=;
        fh=hn5w7TwXKcQg4qwMD8BcwCPCNabTFb1niFyH6+aT6UE=;
        b=D5vaG21v6Lfz+Ou+Zx7S5VpAoUJ0xU6/c4UHiabh2I2q5Wt3fHxJlIcJZFlPk7rOGI
         XigWcjAcbHsQklT/H1qeeFv751uUJZaroVR7YjwQiTtT4s5OC9XxmTWEnvOeZaJeZjfE
         f7ic9BTQwoCKA72Z0RHSOSMQ0bWu+D4MNF5lk9mk0YdBKl7vC3MvvkIsdjhWra0KQasA
         BGMbrGKYJpA4Iny0ynv2yrFvA0qam/Pskpm6BaosHfuz5NudZnzRTEg4f7sRZuHEE1sg
         EN/iLyBzO+LTZ7Hqhdjv5Bn2H9XXBE3X7Zop+1fedLGv713G+bAbG6qtY1SIhazDVAGg
         cM3g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65ee3650@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711118309; x=1711723109; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Cw8xuYjFnOYapYrX4as1FzVNTaIEyIsCmU+Gaskft8c=;
        b=G7ARnWpcejQ7pzxCbsdJaCHAQCr+ObAFBkWgDEGVqEZ+QmLMkrYGXTbFXFKnl9mHBS
         ZKsqU68GdQxJLI5caFGnvXF8TT7K1iIw0oESWIupRzMjaFqyyVa76t34Vt8J1uq4MVN/
         D0jhFYvORXbYXXq+m7QXSb43VBTj/R6JA3Cxg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711118309; x=1711723109;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Cw8xuYjFnOYapYrX4as1FzVNTaIEyIsCmU+Gaskft8c=;
        b=tShaiMnlpj/tDBrtnEIOXk4/SAoZBOUBvL5POBICLASd8JGLU2c+2hkbz3sXDK0QRv
         j/XnvxEOZkxjIrTgJzyBjvR57DsOO8f0TbCPoaoiznZ0ZKkomU/w2nOMcRcn8NM5hUFE
         PNcsbESwBu9waT0PPUtTL8zNJFhaq1+dvdpqj0WcUyEIjeD7bpEEHaFLAwdy4nwaR/bC
         d5M/V6RX90xcBe7uE+g8i1rKFLXMDrQHCpeJ0MVwfikTUD4UFLbhtV/Mvdafr6ueNO5t
         O/ufYazgfjR2Lcl/UWWd3006xEkFw20/oImOD84ezeI6yi0tIT/KvZpxHYE3RVFbv0pS
         DXjA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXCu0/3PX0es1sdytZ7tZuT0Vx4/7zFojzmpT32J+V0zu7ZQPbyLS4D4VVGdS+wuRWKvZGFeYGe4qTk2MaDAqCdj/Uf5+PKOUx6
X-Gm-Message-State: AOJu0Yw6YaRlD3so6+AQBZ/uqMM9E1/SIWRMIQtNRzc8yvd/674/hPFU
	ibBdA6tYZ02FkgM0oBSiigRIdryEWBNCcsK7Y2WENncg/jStna7FTYeSFjmTEYI=
X-Google-Smtp-Source: AGHT+IGR2cZDcp2/+FLtVdfxh9qnnCdgfeEdQChX1WWMVSu9+qQlNuq3O439DqSFLsoPdRAi6wjF3A==
X-Received: by 2002:a54:4503:0:b0:3c3:ae6c:8058 with SMTP id l3-20020a544503000000b003c3ae6c8058mr2376526oil.30.1711118308707;
        Fri, 22 Mar 2024 07:38:28 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:1311:b0:690:bb85:6016 with SMTP id
 pn17-20020a056214131100b00690bb856016ls3478228qvb.0.-pod-prod-02-us; Fri, 22
 Mar 2024 07:38:27 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWskwrb3LENOmXmqNvAHzlajsMSpB/rKsNhmP9agRLD+K5VZM8sUS+4dehkRPxOgH7AR0Y1Bp9mo5hKr6H3NkJVDnx1+VUDXEJQflrnqrsdmo99aQw=
X-Received: by 2002:a05:6214:2a48:b0:696:51ed:42c1 with SMTP id jf8-20020a0562142a4800b0069651ed42c1mr2230106qvb.41.1711118307547;
        Fri, 22 Mar 2024 07:38:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711118307; cv=none;
        d=google.com; s=arc-20160816;
        b=gCWsrydBsLDXhz2NruXbCyd5yh0ykPWIsG2HzD2jQecmGgwd0bboVk2NY5ZVunSrzr
         sYXftsaLNFM22DMrDjfPNy+ymaqb64r1Xnj60GE8v/XKSyNg4v+KOsRxd+9slzs+mmeB
         LmOuW9So8tSaT7c7ffRPgJJ5p72StWHd7+N/X0Sik909OVQ3E5hd4P9TpMiAYzWeHI2i
         kc+dg2oPhh1wcjf6r5EWnCKpEFBDV3iR/PAnxUO9CIucr3pJ4lGGMByURfHc6UCgCeHA
         hFmWNAIkG8Psyglm3YDmB2smJloUExUa9yIph322hCaV7Iy/AErNO/2N3epMsyqwAeCN
         i+zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=rDR6mc0hh/1TB5s2wV3sZfsHYcShEx4PdRZ5QvmMp1k=;
        fh=yrXqn/28cMi7TDB2MITSPfHltkZMn0mX66Kdh9pEGnQ=;
        b=JdjoF/hEpSK4W1pnFAnkRLQdxznw8H1Kc1nJacX8UWs1s06abpbJQSK45B0fCtI4FP
         PAbIZeTIZKDwZgkv3K/R+/HxaA5XkVrY/5VDx2JMnP2kwADSWAp7JTls6jgsWH1S6m6B
         rU518UhPm4GVEa9xSnEcwFJKTQD99+Py1GRcD0CEAQrArpiYinWR5nPWhSXgUbJoO+L1
         LWiQ26Dw5J24MTdvpt4R4ae8OmXAW+8rpf/3K0NCWptZ4MiHySZvfLWSStR1c7evCuL8
         5lCS08uOyZWtnTN45fHk9g2QNYrQnndaxXMrzU261fkMspCzTwkCq7UOOsyogGvCdzu6
         NUpQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65ee3650@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id gg14-20020a056214252e00b0069078004e85si2125368qvb.246.2024.03.22.07.38.27
        for <usb-storage@lists.one-eyed-alien.net>;
        Fri, 22 Mar 2024 07:38:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 761017 invoked by uid 1000); 22 Mar 2024 10:38:26 -0400
Date: Fri, 22 Mar 2024 10:38:26 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Sergey Shtylyov <s.shtylyov@omp.ru>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
  linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  lvc-project@linuxtesting.org
Subject: [usb-storage] Re: [PATCH] usb: storage: isd200: fix sloppy typing in isd200_scsi_to_ata()
Message-ID: <26d483d0-a89c-4c33-99f2-455f0f13e6e5@rowland.harvard.edu>
References: <e8c20e3c-3cbe-b5c1-f673-0a7f22566879@omp.ru>
 <4e13319d-30a8-4274-bfa0-36d915b1e1ec@rowland.harvard.edu>
 <6425997a-669b-919d-af44-880a7ce28ffc@omp.ru>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <6425997a-669b-919d-af44-880a7ce28ffc@omp.ru>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+65ee3650@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
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

On Fri, Mar 22, 2024 at 12:49:23PM +0300, Sergey Shtylyov wrote:
> On 3/22/24 3:57 AM, Alan Stern wrote:
> [...]
> 
> >> When isd200_scsi_to_ata() emulates the SCSI READ CAPACITY command, the
> >> capacity local variable is needlessly typed as *unsigned long* -- which
> >> is 32-bit type on the 32-bit arches and 64-bit type on the 64-bit arches;
> >> this variable's value should always fit into 32 bits for both the ATA and
> >> the SCSI capacity data...
> >>
> >> While at it, arrange the local variable declarations in the reverse Xmas
> >> tree order...
> >>
> >> Found by Linux Verification Center (linuxtesting.org) with the SVACE static
> >> analysis tool.
> >>
> >> Signed-off-by: Sergey Shtylyov <s.shtylyov@omp.ru>
> >>
> >> ---
> >>  drivers/usb/storage/isd200.c |    2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> Index: usb/drivers/usb/storage/isd200.c
> >> ===================================================================
> >> --- usb.orig/drivers/usb/storage/isd200.c
> >> +++ usb/drivers/usb/storage/isd200.c
> >> @@ -1283,8 +1283,8 @@ static int isd200_scsi_to_ata(struct scs
> >>  
> >>  	case READ_CAPACITY:
> >>  	{
> >> -		unsigned long capacity;
> >>  		struct read_capacity_data readCapacityData;
> >> +		u32 capacity;
> > 
> > This is a bit peculiar.  Why bother to change the type of the capacity 
> > variable without also changing the types of lba and blockCount at the 
> > start of the routine?
> 
>    The reason is simple: Svace didn't complain about those.

You shouldn't trust automated code checkers too far.  Always verify 
their reports, and look around the vicinity to see if they missed 
something obvious.

>  I'll fix
> them up in v2 if you're not opposed to this patch...

Sure, go ahead.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/26d483d0-a89c-4c33-99f2-455f0f13e6e5%40rowland.harvard.edu.
