Return-Path: <usb-storage+bncBD6LRVPZ6YGRBQHTXKWQMGQETSU5NSQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc47.google.com (mail-oo1-xc47.google.com [IPv6:2607:f8b0:4864:20::c47])
	by mail.lfdr.de (Postfix) with ESMTPS id B87BC837108
	for <lists+usb-storage@lfdr.de>; Mon, 22 Jan 2024 19:53:53 +0100 (CET)
Received: by mail-oo1-xc47.google.com with SMTP id 006d021491bc7-5963251664csf3007529eaf.0
        for <lists+usb-storage@lfdr.de>; Mon, 22 Jan 2024 10:53:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1705949632; cv=pass;
        d=google.com; s=arc-20160816;
        b=rmriOgOsdXZSa0UtBSaD+8ptdqS6kEmzJweYrX3HWqJ3OhSJqfQZJb+wnIjbQ5YruC
         un966XHRyTdEqg1yEN4Clq1yWIfzVawdjnAZP/J/DfKYUDxQlqGIzTv8VNgSIyLmLWBF
         eWiAzK60m6umUtxZfHTiGUJev3CGh6r/h8mMBksFoyt523cChl8lpkrKdiWzMk2XrFcw
         35NICgnvJEaW6y09o0yCiemc5WEbOP9yS9gKIKi1D8xG9AjCavqc1r4B7kUhminqh2mE
         VsAC+IXu9J8W6Is50JF/35oOXs2qHbQiwJc1Acw55QI5xzr8T61hHwDUlKioG8p/jBc9
         gaXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=y39zIt6piSzC76k451b1JAXUGzPHr4SCbTHC8z/pUco=;
        fh=xaYpgE45GAHekdmmE1CBrCKZtBC9NvfgHjWFYwd2eZw=;
        b=wZnDHKwkA8gsn5v7p7cv4JPLAqqWlz4gAwWXYcIXhib2YBundYSgP4qDcNQrOoQrnk
         eepms5d9ZpudMN+rVS8lT4l/yUqB117nHwS35SdVrhi26ATZR3JtXVuNctiB9tH1v4VQ
         rswRt8YBMCv9OcXvQVKACzl3y6eMY8FY/UbC7guXw0s3WgVAme2uiI1XFAPdNy07Y1AQ
         7PyJ7l2wPORggnpSx/+3As0WRC2zCab9c4j3dL9aTn6mN8CB6np0zwFYUlYs/bbZ+SMz
         HMNmNy/7TAR0sIA7/uDOcftKt/09CXS5NavShFlT102RsfR2VRdavO3G6TG7jUs8lkQQ
         ItcQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+65a66786@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65a66786@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1705949632; x=1706554432; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y39zIt6piSzC76k451b1JAXUGzPHr4SCbTHC8z/pUco=;
        b=NcNz9yGyp7x6Gkzsr5V5NcENLvMf574Ryl0GFQ4TEbwZwdBzNnqzTVDchL+Hk8WlLl
         g2sNrvae3MkdE+BJTIWIRwh7sbAhEAz2TpecRCUvArxqNf+HM/ngJDIyOhqvpB2NKe/H
         RA49E1uTM0ThBLDFJpROVim2HAW8RQB2Pz3oI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705949632; x=1706554432;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y39zIt6piSzC76k451b1JAXUGzPHr4SCbTHC8z/pUco=;
        b=XoK2eYBZW+uDeXhGAOaYOa6Smaux0SmzypW2hfnxuClYm3b4AqOtDZh5sQPm/9EI3O
         IBXkldHfFHonsCmDJMjTGNMmxRQZvsHOex6BS6jvw+/963n+ft0ze1tXLt88Q8tPtDtJ
         tFK/weWb8i+fs/fIiYAsEPZZGXvQvWEhzIkI36XBIpJ4RIoJnGXwK/8Nm2Zo3SLJKdgP
         ntulZaGlLpvYea//CS3GJA8mFsx9WTmYArHGUSXgN/lY/9aotr6jHZUODozb4igy+rLg
         /kqhGr6VVqE5iR8B+ShKIcDjYD/sb48IALdh+lz9YP3bYgkEgMXO0teEb7j2cvhDUwNr
         J+gQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YyD59Edach+gbaeFG7cHYwrOE4QTuFIjz9CQrfItzEpPhfT49ph
	pgWJSgqgDz3fN6QGuY4Cd9ISXbuFYRZzCEa2MIoJOSkGMME+hyHp2gn306MFNgc=
X-Google-Smtp-Source: AGHT+IGA9lkc6Kr3FzXcQjBsivAZIgbNmu+qZY6I/UVmUfD3CPGcBtVkWCHWAJFWHi1K5hKwhMbnog==
X-Received: by 2002:a4a:e0cc:0:b0:590:87c5:2b0c with SMTP id e12-20020a4ae0cc000000b0059087c52b0cmr2901108oot.7.1705949632631;
        Mon, 22 Jan 2024 10:53:52 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:988d:0:b0:598:da7f:81a with SMTP id a13-20020a4a988d000000b00598da7f081als752466ooj.2.-pod-prod-02-us;
 Mon, 22 Jan 2024 10:53:52 -0800 (PST)
X-Received: by 2002:a05:6808:2f13:b0:3bd:9b47:ca3f with SMTP id gu19-20020a0568082f1300b003bd9b47ca3fmr6000356oib.48.1705949631800;
        Mon, 22 Jan 2024 10:53:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1705949631; cv=none;
        d=google.com; s=arc-20160816;
        b=OoMoJwCk6+BrRZfs5tWlCWIyENN8HFKK0pTx2+fy03GQrgViohIU9hV2o2ukCqK64M
         QASgsi1+1tT4Pu6/EIeRn3G8aO5qbpJymYhOychbReAwPDLqoq/jB3wsR+BJtnNs44tA
         8u8w70reQCM5Zq/gAqRrLaMYl+9EpcqoNOCTAXufYhUxOdjUCZoXQnKLFOCHaJni7K1r
         meZZ1nytYtiKmKdjPhVDR+dZMMfa8wh8zTeMJL58iwBi4fv6JfxOZYSlMU4/uBgIx4DD
         EE0ogHEOhxmM3miwuSb1w68S5ONt4MtCjQudh9RH3mGpuXL8HHrye3Pdel7wCZ1XDHH3
         zWmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=msot0UcvViYGKVKdKnJnLhFffT+SuPcGdG2PN+3HDO4=;
        fh=xaYpgE45GAHekdmmE1CBrCKZtBC9NvfgHjWFYwd2eZw=;
        b=a+EuVobKihhSC5PfTi1bx6P3SGk3PzlYHyT/XlitqLR6jBcUnAgr+cSGFUfAqDDtqa
         DgV3/o+NEQm9PHcLEayi9f53xK+5vUNjpfAVwNgb1Wet+anLnt4bBHdjpU5DUo9nfj01
         tI8JS8uvTzpThSA2ZE70T0xW/tNBl8Iny/OtyIweBlRLuUwkqFb8gMGg6HDeU+VgswuO
         69Me0QK+PhXNo7CmYO4KUQIXu29BVgwoS98SPcRR8c61oDK5rlDUISgI11dMAAtv9Pua
         KEXmmvHqGmTpwiB1L3vabVOAQiLt2Ful7kJcEAFmZBkJ7270fNsLMfTpQk2WbKsU3R4o
         nxCg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+65a66786@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65a66786@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id w2-20020a05620a444200b00783918e3404si6561122qkp.651.2024.01.22.10.53.51
        for <usb-storage@lists.one-eyed-alien.net>;
        Mon, 22 Jan 2024 10:53:51 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+65a66786@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 146125 invoked by uid 1000); 22 Jan 2024 13:53:51 -0500
Date: Mon, 22 Jan 2024 13:53:51 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Sergey Shtylyov <s.shtylyov@omp.ru>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
  linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH] usb: storage: freecom: drop useless
 assignment in init_freecom()
Message-ID: <0ce435c2-5ee4-4d3b-b6e2-f185f1d34749@rowland.harvard.edu>
References: <4d3fb70f-bf2f-96cc-a8fb-1ef658a24920@omp.ru>
 <2023120412-observing-affluent-9432@gregkh>
 <b96dc0cc-86da-425b-86b8-39566f594d83@omp.ru>
 <cc7434e0-804c-82d6-3f57-dcceef8b461e@omp.ru>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <cc7434e0-804c-82d6-3f57-dcceef8b461e@omp.ru>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+65a66786@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+65a66786@netrider.rowland.org;
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

On Mon, Jan 22, 2024 at 09:26:51PM +0300, Sergey Shtylyov wrote:
> On 12/7/23 7:16 PM, Sergey Shtylyov wrote:
> 
> [...]
> >>> In init_freecom(), the results of usb_stor_control_msg() calls are stored
> >>> in the local variable and then printed out by usb_stor_dbg() (if enabled),
> >>> except for the 1st call, the result of which is completely ignored.  Drop
> >>> the useless assignment.
> >>
> >> Instead, you should check the return value and handle it properly, don't
> >> just drop the checking entirely, that's not good.
> > 
> >    Hmm... I wonder if you'd actually read the patch...
> >    I'm not dropping any checking because there's none, even at the further
> > call sites of usb_stor_control_msg() -- the most init_freecom() currently
> > is doing is printing out the result of the calls...
> 
>    Alan, haven't heard your opinion on this patch... What do you think?

Oh, sorry about that.  There's nothing wrong with the patch.  None of 
the return values in that function are used for anything other than 
debug log messages.  (It's a little surprising that the original author 
of this driver didn't put any error checking here.)

Greg, feel free to merge the patch.

Acked-by: Alan Stern <stern@rowland.harvard.edu>

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/0ce435c2-5ee4-4d3b-b6e2-f185f1d34749%40rowland.harvard.edu.
