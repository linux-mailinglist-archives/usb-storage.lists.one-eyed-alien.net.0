Return-Path: <usb-storage+bncBD6LRVPZ6YGRBU7PYKTQMGQEKNDZLJY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id E208678F0AE
	for <lists+usb-storage@lfdr.de>; Thu, 31 Aug 2023 17:55:00 +0200 (CEST)
Received: by mail-ed1-x545.google.com with SMTP id 4fb4d7f45d1cf-51bef8bb689sf3387101a12.1
        for <lists+usb-storage@lfdr.de>; Thu, 31 Aug 2023 08:55:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1693497300; cv=pass;
        d=google.com; s=arc-20160816;
        b=YVVRg7mEUvVylVCgIWt0AGdz5C9Z8Fo8o/12nBO9Lrx8HwExiGkzYUppeqdEuk0DMB
         Pfnfao6QWhpIhIkeo3DvtGqKeaTFLQy1RfGWp89oFyurXhdumy6lis4nRUIuWRJvBd2g
         WXNKrx6yFNP4GdnWhTvYgl4mwkoe0C+NOaqc3YUp5uB19y+BE++GOgTALzUrbMOWB/n1
         Ly97AMHu6DAqYzltMGZBNLnJLRtt7kaGi+t3uhI7YNUqng7uoLLP0cff1ThxUmmF8lhC
         PCt/SBGtt42WemSNwf4XVqz7TqX0PUzJcv/c48jvIKRPT77uTo00xDHHLT5AucF5ofdr
         87CA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=wxYXebG1b28bJRVQYDKopH7MxeC0mTah77Mv23hdcl0=;
        fh=qTdisJEfMqbgJskV0UcI72UIEpNP3qVHasTo27t2Qnw=;
        b=kGAJJ5SD5fKR5vRADDYqCirKQM1eK7rU+SV4BSgOrgIdSw9s4EF/uRZwtXlAaMR7Ag
         7XPgW5K1bVygUyBurdY44i6YFyt6KULAzYIoGM8tVL/L+kAoO66NIxqq35XeZXVToBYg
         slpWPGukaphA+7Zan0IC7ztBOTkyhRSMYag5cRSp5jLsDu8cPFiD0rNqLVBpoBj3xVw4
         +ccGoX8V4UvrjGisfB9YSP8iRgnLi13gttBVcgz14PtRT5mGi3O9VXEQsepnUaUkeDG1
         cgWjnbNRpFPmItgRzz0y21Kh9b+Moaflo7kmxLcdrC4OAxSGY9rrAlzx1tBF8zy9j3pm
         SX+w==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+64ebdad8@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+64ebdad8@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1693497300; x=1694102100; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wxYXebG1b28bJRVQYDKopH7MxeC0mTah77Mv23hdcl0=;
        b=czWNDtbct76vb/7slsaf9uULfu9Yptg3FQix8NdEEdtApESa05rhUQEtzWDPs4CGuR
         JdRm+8v5UmAJ5gy9OYVH/Hnl2g/2Htu2yKv5OX52y6SPhe8dLgE8X1x9eBuIjIC2adr7
         JgXMb8ZD0+CAR2cFxDfT+jl72HBAsQuasGocY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693497300; x=1694102100;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wxYXebG1b28bJRVQYDKopH7MxeC0mTah77Mv23hdcl0=;
        b=NFtjLUmbS5MxJo/9Ocd5TffKFN9xxa6CN34dpBUyd3A4zPUe4X9p+WB/Jk6i4IOnPf
         8AMw/SUWBJn0pOFdVbywgiKjgQC5lZ9EjU3/JWNL8gaWsTWO4rye+fa1BxwCosUDDohJ
         OwjlJ/2BVR74RzMIlTcNceGmsa3bxy5PCgzqkYhBGAouEvX4gV64E/MLmMR/2PBAka0W
         +GbRlheLuuDD0cbcNWEJiI0Wf9Sfg8SXJLHdECpkejzzStU915NGn5z+PwONDWfbe2SL
         coLv+Ii5Q3mCVZRJuUCktuhKDmCuTOPVyXLQBq5pQnSTIv1Z1DaRxKrKm5lsBfg1wX7Q
         YByw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YyODTJ16vccJIn33JF1/I0T8Hd3fouFHw52g0QhPqSdWQfy/tz/
	fLsc5npyS8aP28/QRXBVgxgF8g==
X-Google-Smtp-Source: AGHT+IF0ZIRMmyr7xfP0djyG2z+5MJyZ7EO0gnkhaZwXtdkKxkTmRjgGfo6k7CKZdlC2DDlizz1dIQ==
X-Received: by 2002:a05:6402:51d0:b0:529:d147:e9f3 with SMTP id r16-20020a05640251d000b00529d147e9f3mr3775270edd.5.1693497300061;
        Thu, 31 Aug 2023 08:55:00 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:c655:0:b0:51b:d432:a176 with SMTP id z21-20020aa7c655000000b0051bd432a176ls579263edr.2.-pod-prod-00-eu;
 Thu, 31 Aug 2023 08:54:58 -0700 (PDT)
X-Received: by 2002:a17:907:7635:b0:9a1:b144:30f4 with SMTP id jy21-20020a170907763500b009a1b14430f4mr230532ejc.14.1693497298322;
        Thu, 31 Aug 2023 08:54:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1693497298; cv=none;
        d=google.com; s=arc-20160816;
        b=OKYwOVa4cMtrxoIJDc7q0MEVtSJKMThAfEsk5d3r4kVjQv5keAhdOZZcLXsN4HDFF0
         YLPi4i7h4y0lcxTbm3rEQnFC2As+DiKjxQdFRACNBOJWZRcEedziaeZD1pwqcg0AWcNZ
         BbBsZao62WwYQR1hloOh1ohyBwN8WgGh6Jt7jolmBCrsJRWYE05S1x18AkaQLbmNyimG
         KQ6a0mXRSCoHIlZAOqVAibivwG7S+nNXF/ff8YjdEPXmlZZ9oI93F5R4HRb0i1qOGbLS
         oRWN+MlT/4gx161iqSSk/SZ2sETRn0Zpg5fykpaYDqWEYFxLXiH0BynQOZpWe9kYGLMf
         TnsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=qa0O/6UGBlvdy+D3h3pIUUnCYPhcZ1Atv2KqwlXlhwk=;
        fh=qTdisJEfMqbgJskV0UcI72UIEpNP3qVHasTo27t2Qnw=;
        b=x7tbosfj2wUuqa05t0FgTqwVJdXgPmksvS3ZRl5Jl7YR2XWNpjpxkLKQ+21uvXPg4T
         SY+f/n7exPFMYdETsi3UrMlPsLI4BdISlaLPLZ1s7g/wU9vIRn8pcKhLaMGICF0/J3Ct
         uHmPwZQQbpJLYdsEO1V3Gd6tpLZ7wbOr372QzxWx838Cgb0zxlKPV0BLJyxwqcE/J1kK
         zpg7Ep6Suuhy3+K0GYS49DwsG6AOvQxo4XHkMwG2X+5C+jEI6qGigUL7cZz+oaklm3vg
         lUukn954QKgPWcM6uWMW0N2acWeby3e4WOKdEdX/U+dZDeD44mehuh4o+iTdndQvk098
         uQLg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+64ebdad8@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+64ebdad8@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id gw18-20020a170906f15200b00993860a6d36si1239827ejb.374.2023.08.31.08.54.57
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 31 Aug 2023 08:54:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+64ebdad8@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 483141 invoked by uid 1000); 31 Aug 2023 11:54:57 -0400
Date: Thu, 31 Aug 2023 11:54:57 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Milan Broz <gmazyland@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
  linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [usb-storage] Re: usb-storage: how to extend quirks flags to 64bit?
Message-ID: <6553da2f-455e-4263-a9d9-b6dc64d61e92@rowland.harvard.edu>
References: <f9e8acb5-32d5-4a30-859f-d4336a86b31a@gmail.com>
 <6f8b825b-bc41-4080-8128-4a6f0a43f779@rowland.harvard.edu>
 <34aa2eea-5417-4e46-91a0-aac1a46a84cf@gmail.com>
 <2d580337-eaf3-47fb-afa7-1006d9a257ea@rowland.harvard.edu>
 <c4c48d12-c4ce-4bdc-a3f9-c6020067681b@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <c4c48d12-c4ce-4bdc-a3f9-c6020067681b@gmail.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+64ebdad8@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+64ebdad8@netrider.rowland.org;
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

On Wed, Aug 30, 2023 at 10:39:07PM +0200, Milan Broz wrote:
> On 8/27/23 20:55, Alan Stern wrote:
> 
> ...
> 
> > > > > Someone will need a new quirks flag in the future anyway... :)
> > > > 
> > > > I can think of only one way to accomplish this on 32-bit systems: Change
> > > > the driver_info field from a bit array to an index into a static table
> > > > of 64-bit flags values.  Each unusual_devs structure would have its own
> > > > entry in this table.  As far as I can tell, the other unusual_*.h tables
> > > > could retain their current driver_info interpretations, since no new
> > > > quirk bits are likely to be relevant to them.
> > > > 
> > > > Making this change would be an awkward nuisance, but it should be
> > > > doable.
> > > 
> > > Hm, yes, thanks for the idea,that is a possible solution.
> > > It will need to modify all unusual macros, though. Just I am not sure I want
> > > to spent time patching all the drivers as I have not way how to test it.
> > 
> > I don't think it will be necessary to change all those macros, just the
> > ones in usual_tables.c.  And to create the new table containing the
> > actual flag values, of course.
> > 
> > There will also have to be a new argument to usb_stor_probe1()
> > specifying whether the id->driver_info field is standard (i.e., it
> > contains the flags directly) or is one of the new indirect index values.
> > 
> > And you'll have to figure out a comparable change to the dynamic device
> > ID table mechanism.
> > 
> > (If you want to be really fancy about it, you could design things in
> > such a way that the indirect flags approach is used only on 32-bit
> > systems.  64-bit systems can put the new flag bits directly into the
> > driver_info field.  However, it's probably best not to worry about this
> > initially.)
> 
> Hi Alan,
> 
> So, I really tried this approach, spent more time on in than I expected, but
> produced working code... that I am really not proud of :-]
> (Thus avoiding to send it here, for now.)
> 
> I pushed it to my dm-cryptsetup branch here
> https://git.kernel.org/pub/scm/linux/kernel/git/mbroz/linux.git/log/?h=dm-cryptsetup

I haven't had a chance to look at your changes yet, and I might not get 
around to it for a while.

> The last patch is the reason why I need it, just for reference.
> More comments in the patch headers.
> 
> Could you please check it if it is *really* what we want?
> If so, I'll rebase it for usb next tree and send as a patchset.
> 
> But the macro magic is crazy... and I really did not find the better way.

Another possibility is to create a simple pre-processor program that 
would read the unusual_devs files and massage the information into the 
form the driver will want.  Such a program could do things that the C 
preprocessor isn't capable of.

For example, with this approach you could keep the original flag bits in 
positions 0 - 30, and reserve bit 31 as an indicator that there are 
additional flags stored in an "overflow" table entry.  This extra table 
could be relatively short, since it would need to contain only a small 
number of entries.  I can't think of any way to get the C preprocessor 
to do this, but it would be easy to have a separate program do it.

> Anyway, it also uncovered some problems
>  - some macros need to be changed a little bit, there is even old one unused

It doesn't hurt to have someone with fresh eyes taking a look at this.  :-)

>  - duplicity of entries in UAS and mass-storage are strange (and complicates
>    the approach).
>    I guess the sorting is intentionally that mass-storage is included
>    before UAS, so the mass-storage quirk is found as the first (for non-UAS).
>    (While UAS drive includes only own header.)

It's a little tricky because the two drivers need to be aware, to some 
extent, of which devices either prefer to use UAS or can't work with UAS.

> - the patch significantly increases size of module for 32bit
>   (64bit system use the direct flag store approach)

The "overflow table" approach would help a lot with this.

> - I stored a pointer to the flags array, not the index. Perhaps it should be
>   index only (trivial change, though).

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/6553da2f-455e-4263-a9d9-b6dc64d61e92%40rowland.harvard.edu.
