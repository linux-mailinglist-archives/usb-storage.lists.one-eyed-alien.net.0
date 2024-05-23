Return-Path: <usb-storage+bncBD64ZMV5YYBRBP66XWZAMGQEEVTGAAY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc48.google.com (mail-oo1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id E982E8CD868
	for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 18:30:56 +0200 (CEST)
Received: by mail-oo1-xc48.google.com with SMTP id 006d021491bc7-5b2b8c184efsf1532624eaf.3
        for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 09:30:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716481855; cv=pass;
        d=google.com; s=arc-20160816;
        b=RxZ5OGItq2Lc7N0LtTakjZHfk+WI35wTnY7LjYWsy5hbn8EADbWki6VjGy2C3ASgcF
         /kbFv80AdfJMJUYr/zxk/vjL233pSjiX9+DVYgXMwhYsuECPE5sYRh2L3312SJa39rNl
         Y6Nw+Wu63XMHjNkpYAz4h94lL4YcoOAzbT9qFi2O5BHULrFuk2kEMKj/eo8U9Y2NduGn
         c5gJbK9GrbiNUkeXYvvO/6MUsp/nuO2G5xJXMe+hJvNShzPD4HDi9BNp0A35hDGebac9
         DLeEL13ubITp3rYKroEHoaK4XfBlNlFDnklVZC1e+Mr/UR7/HlUkTChNvGET+YQQjuQM
         MCHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=5pHaqa/2G2BDrDegZbGVSxYPv5o3B1x7VFZ9a5xdd5M=;
        fh=28Z+Oy51BcFriyibj98JET5SPd/QSxxgjW6NJ7qbfAA=;
        b=Ln7McBcVQc77GYmauR8y1QNA6qL03qi0eIAZd747SR/DGcKnRp+JI3nTBKRSNeAKOv
         yDVfS9fdu6oufzqPvvmc3F+H7djN4bkVL0MbZzPlYMLVhhzRK1EQvquL6O1FDxljr704
         t/Wt3oTi97JCcNTS7jJfzQGgs196HGsTdrkfNHoevnZ18oSpfwWIUSuNxjWlYQK/Dy4J
         BCmUXMzbXeOpK6oSFL4qD+uITyR6ZH9ZyvG5v7k5uNpTdvHTEEtlxN6wHtPEQv50Hyrz
         MSSX2owa8q/3EnfB9UIAftfJSmzBmnqL4enEquiBP3rWE7LKgyTGM1PPxL/7mIQvowX7
         1p+A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+6652f266@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6652f266@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716481855; x=1717086655; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5pHaqa/2G2BDrDegZbGVSxYPv5o3B1x7VFZ9a5xdd5M=;
        b=jISX3vA2kaKBukyiXn5BGLOLNVl6oplJ6428ltCA7jFHqjXQ5FsErV8xaHXcYDvXpO
         nIj3Q/Pu+ktZ/gDlhg/wCHbaEos+cOUGB+qWwEGcLPSzeBsY9m8dJfwu/jVH3gAFqlNE
         z4/5dvP+8R79vrzJnk3LWRLjE8tlaNzFAM5Pc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716481855; x=1717086655;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5pHaqa/2G2BDrDegZbGVSxYPv5o3B1x7VFZ9a5xdd5M=;
        b=hvMWeiVrXk/2tuZ57GhRVzhKpJlCiMHkxa/9mU228+sOaTjZgJr4erReidhKQPuob6
         nx0chNM0TnVZgjYekzANHX+NiwctbY6Xcf+r5FCAFRQhzOiPbrt0PQdrsAzfunoJLhiO
         WouzUZxZjSgSMxlPuQgoYlQwFFOOU0v712xAoOjD+JSDRa2kyENSMGLUANVqa0t5Cfv9
         QUoXdaXr3tcW8gn59/kzjE2X4nB63LqdBaiLeVO8zMcbs29uN7ZK00sDFnxV7yTokhtD
         vicMNDtW6uJ62DOpYf0hysfimjQQ8Chq2+WDs0A9DtGqje1cy1qYPYR1hBomD7IyTw0t
         IE1g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXejbpfvee1SVxkRidUcLpv8NPyKAe5icomidPX2CBck2l5oWUQyasLYiYr8nstrFky4qTrMumbp0vk/h5V/orNE3y7yEXfVAkZ
X-Gm-Message-State: AOJu0YxbHgnAxBbp1qLUi2two+/kOBWBE2dt5d0TigZ8L8i7qY84CnMl
	F8NIk6vOjvKwuWuP0fUhAxxQRpSoLCqHgaYMZZdHbVkqY8biHF5+/Lzui4LtbGY=
X-Google-Smtp-Source: AGHT+IFAevziWYNFWcmybi0kmNs6LjGcANOODiIbAgz9uWM0LMBB8ssel/BYxd3rKQOuk9FP3OK6vA==
X-Received: by 2002:a05:6820:1517:b0:5b2:f2e5:a8c8 with SMTP id 006d021491bc7-5b6a431e0a1mr7038830eaf.8.1716481855627;
        Thu, 23 May 2024 09:30:55 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6820:1ca2:b0:5b2:74a6:ea02 with SMTP id
 006d021491bc7-5b9460060e6ls95211eaf.2.-pod-prod-08-us; Thu, 23 May 2024
 09:30:54 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVSMix1X6Q/HrN9n8ZHHdXwaqzdOWtD+RrAsJAgAVSbk7JM2FlM5qZWTdttCNyEQx7fk5WDWaBR7PrLad1K17AbiqqM88XR3+xs1LPp/Fjv5XWEaJw=
X-Received: by 2002:a05:6830:18d8:b0:6f0:e843:3873 with SMTP id 46e09a7af769-6f66a59efa9mr7376280a34.33.1716481853864;
        Thu, 23 May 2024 09:30:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716481853; cv=none;
        d=google.com; s=arc-20160816;
        b=Ec85HVntOki1vFClE7sUb0ynvRAZ4TZKkb1vJoV9+fXNQ2NKpdd5bXSOM/ZputIWIC
         kKSZe6Si+iyMGnTyGnM+EG2MbvUOvi6KmcoWqGScr7EhTndyjP5zlsBQiFCTRf3TGL+l
         qjT2giH8aMQlNKPzF/eVg7bfgrc1OJo3j5HBT87MAnI0AgcDLKlro1pIujga8nS3nQ/n
         QOSDYmvdu7FbeX9CFbcKtD44j+ciT+9ryxARSMRBGgCr+urPsMwt/0DovAzHyR787Ehi
         XIrvbwirg91Imro+9kBVNbCaxVBMEBn2GbWj70hQqQeCnPsqIZUE49Ev/4Bz0E+viGNq
         wCxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=bgyZuvM4CwEyx/dV0q7Gr5xs885li8qfCrHV6XxksUs=;
        fh=DHYxaMj/BRrwemWbzAIymvHEhpsz/OvuKDsR8+pFfZY=;
        b=F08eJA54SKjhUBEqWHHyzEPSF2vOi37eiQbTmBscwIiqNgrLQQytspWf2g4IcHTswX
         w018ThdLsh4wbu8hYPNZjTcA8LDK5KbY7zVgzBQE4npXfm/HzQ/denp7E+UJddtNv+qD
         kzWODe4IckXJQeCtmQNiIpsSlcRDaJxaaemqiKdQtLDuHp6RgY6w2jtGoJ6H1KWRWVV6
         5YBHhZ8LX0qTaDpDnweRTAb8c676mIEAqtzQmgfhiCNxyIvcZm36+v/vj97NSf3BCmCb
         SsgJUAGcIBKRfGZ0K1mPGmbMYMZ8Z0SoI1Y3uuCpSUhDQcyWml1za7JTWfZERo1OQkD7
         sp0w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+6652f266@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6652f266@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id a1e0cc1a2514c-802f9bccb7fsi1060413241.128.2024.05.23.09.30.53
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 23 May 2024 09:30:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+6652f266@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 543687 invoked by uid 1000); 23 May 2024 12:30:52 -0400
Date: Thu, 23 May 2024 12:30:52 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: shichao lai <shichaorai@gmail.com>
Cc: gregkh@linuxfoundation.org, oneukum@suse.com, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
  xingwei lee <xrivendell7@gmail.com>, yue sun <samsun1006219@gmail.com>
Subject: [usb-storage] Re: [PATCHv2] Check whether divisor is non-zero before division
Message-ID: <eb995078-1923-43d5-a20f-9d4a7edee719@rowland.harvard.edu>
References: <20240523092608.874986-1-shichaorai@gmail.com>
 <a0afa88b-f84c-4b45-a265-2e6bcbb84b35@rowland.harvard.edu>
 <bb581989-4ac5-4ffe-9f80-01b5f993146f@rowland.harvard.edu>
 <CACjpba5iJ5dC=rB_Ckaqe4BKesrAN2VmsDCPZJ=frufNgA96Uw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CACjpba5iJ5dC=rB_Ckaqe4BKesrAN2VmsDCPZJ=frufNgA96Uw@mail.gmail.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+6652f266@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+6652f266@netrider.rowland.org;
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

On Thu, May 23, 2024 at 11:13:08PM +0800, shichao lai wrote:
> Thanks for your comprehensive analysis.
> I added some pr_info() to check the workflow, and I found that the
> uzonesize was not initialized in fact!
> 
> The workflow is shown as below.
> Before alauda_read_data(), there are in fact many alauda_check_media(),
> but none of them enter the branch of alauda_init_media(), where
> uzonesize is set to nonzero value.
> The key branch condition is "status[0] & 0x08", which is always
> unsatisfied in this repro.
> 
> ```
> alauda_transport
>     alauda_check_media
>         if (status[0] & 0x08) // not satisfied
>             alauda_init_media()
>                 // initialize uzonesize
>     alauda_read_data
> ```

Good work!  So the problem is that the driver believes the status[0] & 
0x08 test.  

The way to fix this is to add an "initialized" flag to the alauda_info 
structure.  Then alauda_check_media() should call alauda_init_media() if 
the 0x08 bit is set in status[0] _or_ if info->initialized is 0.  And of 
course, alauda_check_media() should then set info->initialized to 1 if 
the alauda_init_media() call succeeds.

Would you like to write and test a patch that does this?

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/eb995078-1923-43d5-a20f-9d4a7edee719%40rowland.harvard.edu.
