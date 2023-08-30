Return-Path: <usb-storage+bncBDTNDO5RRYJRB3WRX2TQMGQELFJWWAQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lj1-x248.google.com (mail-lj1-x248.google.com [IPv6:2a00:1450:4864:20::248])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC1878E0CE
	for <lists+usb-storage@lfdr.de>; Wed, 30 Aug 2023 22:39:12 +0200 (CEST)
Received: by mail-lj1-x248.google.com with SMTP id 38308e7fff4ca-2bcc5098038sf3082861fa.2
        for <lists+usb-storage@lfdr.de>; Wed, 30 Aug 2023 13:39:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1693427951; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hc5G43hlaWCSVOCVSust5vUlU8VBCrs4g/qSiyhjzC9eae3/apQDygfOPlulFIlJhs
         ECxrKp51Tfvij6oj35M//S9xGQgo4g6UBPKh4L2cPPqNkmSAR18XHn3OHhrz8cGs40rr
         QLqFnkXN7V/2TZLIhe6T5khozyjOrXkfIENS2CMb8muRdii4Io3s6AVOibxah2ZVEFeN
         01aEJ5LvXH0q3pRDHn1XUc0MY2E1LiAbIc0w0iOqyijpPkCFzMbl7K1oc7TryECCV871
         v27ISu6vY2C9C+8IopLJ4ATUfGQ5RjR3j7naVA86DbnR2Uec0O9rjmJbaxOFozmLbkpj
         puSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=+raITWVHMieFbSBdPq0OjtKqtuPnEHTwa5byW01JcKE=;
        fh=d+iAgN6vmtssyzVwTBqhKJm+GuxAgdHFAHKZ99WiIwY=;
        b=MapiG8xvaxbtzABnzRP+YMFJHROGM5tD1teyBnUek3Qko7o8T34gmBJ4VEE9CHGYBz
         HYcMahQIyB2ya+Kz4J+SbaiTEwL7WHDr70R1i0q1SUKTZytmJwcHd/GjTyclOyssCoZP
         WiNd/Yhf06tQm6H3zOxlZJVJk4fbEat2CP5kXmyjphVi3rIZpKivtT/EpMJ3YgIwUl6t
         dH+raXUGoDT9WRCN+bN3E0jpR/HETUSzXWthRKF2sNfjFWcSM9LPcsbA8g6RhNrQBxeM
         blQXPOX+aj/KuseSnJl6ZoetWdRtWY1DjzdWrULYjP/iG8aWKDHghJkbDv1zT/1Lg3q1
         YaVg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20221208 header.b=g7iMPXc3;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1693427951; x=1694032751; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:autocrypt:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=+raITWVHMieFbSBdPq0OjtKqtuPnEHTwa5byW01JcKE=;
        b=a1IfNnYtDirwz5wd5qmvNqx+PBbom894XMa4qC42vheNNJdUwxxZDAvGLzckxcGV5d
         vxg3PLZypdZFZPFXXjQDitkJBnlzhyHHdN0jHEv+2vxVtDX9q6PnEK2/zU2T+Qi3Lu3i
         IzMmJoHKn25oSqqNIpoZvcPKGMaDCZPZCNV2I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693427951; x=1694032751;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :autocrypt:from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+raITWVHMieFbSBdPq0OjtKqtuPnEHTwa5byW01JcKE=;
        b=kLvrSwQjhocnMChrVOqNpaSrXvhTysHhMXuhiUzu6vs9ggTWHXYHGoah1GXhrH1HYx
         QyJdkYOTUtDfqNCdCI2QmtkLNe8KK+XXISAdm+SfMKRiv4aRffij7xIamKPNXFHunNI1
         XMKt4qWzV6i9WUnHiJR2H/BtQ2yVTkxK4m9HPlv8x5B5x+ZSG74i92DvGGUmQKbZ9GHw
         bk23g+s334fsnB1zMpFC9FSDAvdLd/CMp40CWHpLkhdKJICeXx5Oolk9jPr4uvKtAoDJ
         rbJdxSvzkfR5LnxK9Fs/S47PeykEIHFnYxZR4nw6YEqVMUAY8FtAvPY0FBlGWbsDVs97
         zRgw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YwyHSu1XW8lTIjjTeFaU+rTgH4PJrt2APOquy9JNDUS80+/7Wln
	Wdd+/0aX790tfiCl+UOxIvFqVg==
X-Google-Smtp-Source: AGHT+IE+XWaO2HVd0GXbGpUzII1c2gFoWHZ5NYbo2+dPQzIm6QXa6yDmFxG7BeFdYWsk8XhuewO7dA==
X-Received: by 2002:a2e:b708:0:b0:2bc:d7d6:2588 with SMTP id j8-20020a2eb708000000b002bcd7d62588mr2863142ljo.17.1693427951235;
        Wed, 30 Aug 2023 13:39:11 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:651c:1ce:b0:2bb:94e3:fea9 with SMTP id
 d14-20020a05651c01ce00b002bb94e3fea9ls13746ljn.2.-pod-prod-02-eu; Wed, 30 Aug
 2023 13:39:09 -0700 (PDT)
X-Received: by 2002:a2e:9599:0:b0:2b6:cf64:7a8e with SMTP id w25-20020a2e9599000000b002b6cf647a8emr2933062ljh.19.1693427949265;
        Wed, 30 Aug 2023 13:39:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1693427949; cv=none;
        d=google.com; s=arc-20160816;
        b=PJDFyMdaINvyyXmDYJIdxEmts4QnZNwQqEvmxRp+Xto74WFguW3BSp9d+0PuzIHvk7
         Vmxjfaq8oCuEadguQb1bM8Kx0l6vfzbJIAcIatw7U1cGwS+1AYxxo02sXBBEEIGDv/SY
         CbbpjC4jZPyg5DiQELdZRH2coos/wTGT8J9nLS4nmRy9TrtRlNdq+RelGjwiHVKItbal
         YVP02kTNhjYXeA6AK9PNKVLbGmqTdrujPVHK3hGu9jIPHAVl95PC82ovzERxUmvJy1ll
         rzcq6wodNjvX3vftCS/y6/iKptGFZ7PDJJTuJ6ZZlSOn/tn4Eb0cE06ezTM2/38IpXdu
         jQcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=Udxb/qQo1p8Z+MDmbTBUbKzMtdm6Oq0GxFma8TsU8Zk=;
        fh=d+iAgN6vmtssyzVwTBqhKJm+GuxAgdHFAHKZ99WiIwY=;
        b=tLm+9s2iLRql1CXDRJZRCeOGpMgu8zfmlwBgtDx8Gw4YVe3lSlACcAnoEDJZEyLCmX
         PaqYpGffyH+mOUpbx6AieLxaYSDRg0bcYKHCnIV5mxmsPuQk81n60VLX+/Qv3EayFpBg
         c9NlWyoFa1ehYKN3KpXPccrXIzkIJaxq1033kfQZ5DFbMNmY+wNieE3IMwSBBCaWOqwJ
         4fqDrBMSc/sGUf3KxktqF14dLLbeeo58+9DiOCqlDrmhRIGeoMxw9HV+Imt8nvWBQiBx
         h4ab0Q9NWsy7jLdFmgRX2xkDYlbdgY5oVBUWb1ZCRBM/wptAhead0uPmu2vjajvDNbHn
         3QkA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20221208 header.b=g7iMPXc3;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id k16-20020a2ea270000000b002b6d7d21a84sor3700758ljm.8.2023.08.30.13.39.09
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 30 Aug 2023 13:39:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a05:651c:228:b0:2bc:b61d:44c9 with SMTP id z8-20020a05651c022800b002bcb61d44c9mr2612112ljn.53.1693427948523;
        Wed, 30 Aug 2023 13:39:08 -0700 (PDT)
Received: from [192.168.2.30] (85-70-151-113.rcd.o2.cz. [85.70.151.113])
        by smtp.gmail.com with ESMTPSA id ch26-20020a170906c2da00b0099de082442esm7539315ejb.70.2023.08.30.13.39.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Aug 2023 13:39:08 -0700 (PDT)
Message-ID: <c4c48d12-c4ce-4bdc-a3f9-c6020067681b@gmail.com>
Date: Wed, 30 Aug 2023 22:39:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: usb-storage: how to extend quirks flags to 64bit?
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <f9e8acb5-32d5-4a30-859f-d4336a86b31a@gmail.com>
 <6f8b825b-bc41-4080-8128-4a6f0a43f779@rowland.harvard.edu>
 <34aa2eea-5417-4e46-91a0-aac1a46a84cf@gmail.com>
 <2d580337-eaf3-47fb-afa7-1006d9a257ea@rowland.harvard.edu>
Content-Language: en-US
From: Milan Broz <gmazyland@gmail.com>
Autocrypt: addr=gmazyland@gmail.com; keydata=
 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
In-Reply-To: <2d580337-eaf3-47fb-afa7-1006d9a257ea@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: gmazyland@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20221208 header.b=g7iMPXc3;       spf=pass
 (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=gmazyland@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On 8/27/23 20:55, Alan Stern wrote:

...

>>>> Someone will need a new quirks flag in the future anyway... :)
>>>
>>> I can think of only one way to accomplish this on 32-bit systems: Change
>>> the driver_info field from a bit array to an index into a static table
>>> of 64-bit flags values.  Each unusual_devs structure would have its own
>>> entry in this table.  As far as I can tell, the other unusual_*.h tables
>>> could retain their current driver_info interpretations, since no new
>>> quirk bits are likely to be relevant to them.
>>>
>>> Making this change would be an awkward nuisance, but it should be
>>> doable.
>>
>> Hm, yes, thanks for the idea,that is a possible solution.
>> It will need to modify all unusual macros, though. Just I am not sure I want
>> to spent time patching all the drivers as I have not way how to test it.
> 
> I don't think it will be necessary to change all those macros, just the
> ones in usual_tables.c.  And to create the new table containing the
> actual flag values, of course.
> 
> There will also have to be a new argument to usb_stor_probe1()
> specifying whether the id->driver_info field is standard (i.e., it
> contains the flags directly) or is one of the new indirect index values.
> 
> And you'll have to figure out a comparable change to the dynamic device
> ID table mechanism.
> 
> (If you want to be really fancy about it, you could design things in
> such a way that the indirect flags approach is used only on 32-bit
> systems.  64-bit systems can put the new flag bits directly into the
> driver_info field.  However, it's probably best not to worry about this
> initially.)

Hi Alan,

So, I really tried this approach, spent more time on in than I expected, but
produced working code... that I am really not proud of :-]
(Thus avoiding to send it here, for now.)

I pushed it to my dm-cryptsetup branch here
https://git.kernel.org/pub/scm/linux/kernel/git/mbroz/linux.git/log/?h=dm-cryptsetup

The last patch is the reason why I need it, just for reference.
More comments in the patch headers.

Could you please check it if it is *really* what we want?
If so, I'll rebase it for usb next tree and send as a patchset.

But the macro magic is crazy... and I really did not find the better way.

Anyway, it also uncovered some problems
  - some macros need to be changed a little bit, there is even old one unused
  - duplicity of entries in UAS and mass-storage are strange (and complicates
    the approach).
    I guess the sorting is intentionally that mass-storage is included
    before UAS, so the mass-storage quirk is found as the first (for non-UAS).
    (While UAS drive includes only own header.)
- the patch significantly increases size of module for 32bit
   (64bit system use the direct flag store approach)
- I stored a pointer to the flags array, not the index. Perhaps it should be
   index only (trivial change, though).

Thanks,
Milan


-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/c4c48d12-c4ce-4bdc-a3f9-c6020067681b%40gmail.com.
