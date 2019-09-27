Return-Path: <usb-storage+bncBDGIZD433YCRBX53WXWAKGQENBBBVDI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lf1-x148.google.com (mail-lf1-x148.google.com [IPv6:2a00:1450:4864:20::148])
	by mail.lfdr.de (Postfix) with ESMTPS id 94636BFC85
	for <lists+usb-storage@lfdr.de>; Fri, 27 Sep 2019 02:54:56 +0200 (CEST)
Received: by mail-lf1-x148.google.com with SMTP id w193sf924513lff.3
        for <lists+usb-storage@lfdr.de>; Thu, 26 Sep 2019 17:54:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569545696; cv=pass;
        d=google.com; s=arc-20160816;
        b=hKblpbJ4gIpL5SOrQtHzv4YebaRuylJMNRY7NFdc7g9YsToujJFiNqY7dJatrC99yY
         q/nOTjEaB3f3tLWRPMaeklWIe0F831RgW9YAcdmQWoWCtOblSU0HZAaiDxQC8mH2cF8/
         vZeKl6HR3kqA2llSMSxuHvSDQZzsHtQ6if4zTSYBIvk1I7YJDSFVD9uqvTVat3cngogV
         arv1IXFjmIT4w+tTnoIpP3SUD9ne+JqAKX/51LKsLfQ+BxmhNN6GaxGx8Tnx3+8NEW4k
         n2Q2TljBq9JWKPF5d5ia6JGi1Ws9dPa7/VSSlkEcq5SKbBj2EWdDqQU4ORYtfQFkGi0q
         Lj0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:reply-to:sender
         :dkim-signature;
        bh=YxnUxnTlUG9BUmVVXxzxZx2btzaYdUAcOHmc+yE51js=;
        b=DKsyJC2mvU1ltrMbwJmCfxiw4bKRvzHUhlrA5/zvtNAIqF2m3w/z7QS4uvy8pkkugH
         XpjToOZ3wQIh/gBeiNPJJHLKwDhv1BsHc7YKTgkgVaE1fTNRC1AVRd3xY1E89I6aA5Q5
         9Bm2NLoCm5tyj9DjNW3bIAipvzy3z9qfoR8EzWSXQ98nGa0Oe3oxiAP0rK6jSEI2+NWr
         51eOygFClFikcOIhXHBWL1hLV4AaI541ZgfbSkltkU8pGwMgSObFoLASdbuawy7SIuy6
         8ocs4g0wam3C/RyQRFWKVqKyWqhAUZzKMLTb41pR45yb4Zn/koRZzSRuULt3IED57dhM
         kLnw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of dgilbert@interlog.com: smarthost.freephoneline.ca not found) smtp.mailfrom=dgilbert@interlog.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:reply-to:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YxnUxnTlUG9BUmVVXxzxZx2btzaYdUAcOHmc+yE51js=;
        b=SYW48UkRi62aPy3uJZsMaMlsA99VEdqLAP8fgEG6ibLeaeDQUd/pMbBdhGmeyzqM7E
         Uu9pz6GvfqPAG/d1TjvF4W+ggFWQXyeCV8jlPRnKwJt7yZOs3pkm8NpEF9nibvOaAU4N
         sjieHIaZ2uHbzg9lVq3WLeFSHl1Ohz8ZmyBe8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:reply-to:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YxnUxnTlUG9BUmVVXxzxZx2btzaYdUAcOHmc+yE51js=;
        b=CQOqHwdy6piBZeuwT6QX/dOPri1fWW4GuTDRc3aqEqhm5CbbY/9JUpZDx/f7rMUIDr
         K50V2qwuLyohGvc2AuujJ5jqF29RoPXcsTzwbszE9cp865VyiBv57HWmmGiXmSu8RCLQ
         S/QPtICbPssQgf7J49t6FKgXySnjiVbpxTtRtqVh0x8sWRk90zogAabyBM0q8nUP1Mmd
         anf7/aToc885/dTN7suRZlna9Z9phDWGtbrxMTlO77s0LppHYmwHly5W6TNkMnsURwYK
         dXuADan12rrFBT9UAij/B6Pt9+lvxcgzj5NYucgHu/4732XJ9LOfA25esmiGL3uT5uHy
         L/6w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUSfn6juRNRCFNDSJqoEzn+7NZhM+RLHkx8NoeUE4lul3bqBO8j
	qveldC6JX1T1w9dgACo19veb+Q==
X-Google-Smtp-Source: APXvYqy9kQl5CQySfA6x1jZes/a45/HyFFuomuGj+qAdvRbBSRRQdrdbj9pcBQHbe8gDpSn0izk9bA==
X-Received: by 2002:a19:2313:: with SMTP id j19mr781518lfj.138.1569545696044;
        Thu, 26 Sep 2019 17:54:56 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a19:c709:: with SMTP id x9ls195948lff.12.gmail; Thu, 26 Sep
 2019 17:54:55 -0700 (PDT)
X-Received: by 2002:a19:da01:: with SMTP id r1mr810873lfg.150.1569545695233;
        Thu, 26 Sep 2019 17:54:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569545695; cv=none;
        d=google.com; s=arc-20160816;
        b=TuTVq5tPuRrOb7VvRg+SbnO1J4Gx2BpAKholmAkKXaltKZoQw7jNuUDLuoIhuY11sf
         OxKYNJuxd/bZkBNIOjttuzhI6GqAGAOBaEOBNKpx9DLLeFdfaXBJ7L1npOIjTXbih/d+
         m1CIC4smT8AhykaOxO5prYN3wbQc0c3VQ06fe7gORZfnvsYZNgg6yBfoPFfoYmV1piqX
         Lp7SaTdraw1iWf+fSsu+kcrPD17kJcGO7qU1kKRNHnbjMk8qQ7th67xwiijINrlqz7r4
         rchEpCZihAaUCRX13tLqvH3RJHlQAsloxE9VD5rQADVrmAWlSmoThE7QfDPdjwAbuMfU
         g/lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:reply-to;
        bh=thl3QBWjokmR/NuZ9Uh34adBhq48iBNqq7+8iuR0CZQ=;
        b=Y1yWfFnihEFo8T/HfXgTzVjWuvboM/d/fm5WOgD0d8FpMEB1ZRCsfnNitFpBv8OaJ+
         24mEHBbv24Wdk00mf0nqgKb3h3CSjk/Ft5pyj/KoDU1lLtpI427qhkI5h00iMsWEiQWB
         4dyJ9Loj0Pc13GZwOX3WEAWVO0DOoX22zFetxXn59Bwio4cfnwrXSVsTwxj+NmOkNfgS
         wzGVMyPH+he6zE129MlwPTyWy/lUvEDQ/Cno6jjxwhvXbMD4i5DxwaESOI22fFvzahXt
         +O4BBfgUAlYJzKzg9ygmiHlPkNuSlKahjZYckueX+5LXCMpsfL34HQd/nVP09CV4v2fT
         J6fg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of dgilbert@interlog.com: smarthost.freephoneline.ca not found) smtp.mailfrom=dgilbert@interlog.com
Received: from smtp.infotech.no (smtp.infotech.no. [82.134.31.41])
        by mx.google.com with ESMTP id o15si778142lji.200.2019.09.26.17.54.55
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 26 Sep 2019 17:54:55 -0700 (PDT)
Received-SPF: permerror (google.com: permanent error in processing during lookup of dgilbert@interlog.com: smarthost.freephoneline.ca not found) client-ip=82.134.31.41;
Received: from localhost (localhost [127.0.0.1])
	by smtp.infotech.no (Postfix) with ESMTP id 9CA0B204164;
	Fri, 27 Sep 2019 02:54:54 +0200 (CEST)
X-Virus-Scanned: by amavisd-new-2.6.6 (20110518) (Debian) at infotech.no
Received: from smtp.infotech.no ([127.0.0.1])
	by localhost (smtp.infotech.no [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7me66Fx3w7TQ; Fri, 27 Sep 2019 02:54:46 +0200 (CEST)
Received: from [192.168.48.23] (host-23-251-188-50.dyn.295.ca [23.251.188.50])
	by smtp.infotech.no (Postfix) with ESMTPA id B3E2020414D;
	Fri, 27 Sep 2019 02:54:45 +0200 (CEST)
Reply-To: dgilbert@interlog.com
Subject: [usb-storage] Re: [PATCH 0/2] Fix SCSI & USB Storage CHECK CONDITION handling
To: Alan Stern <stern@rowland.harvard.edu>,
 Damien Le Moal <damien.lemoal@wdc.com>
Cc: linux-scsi@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Justin Piszcz <jpiszcz@lucidpixels.com>
References: <Pine.LNX.4.44L0.1909261943230.24988-100000@netrider.rowland.org>
From: Douglas Gilbert <dgilbert@interlog.com>
Message-ID: <631aa72f-4eee-bb5d-a81c-62df3a5a09e8@interlog.com>
Date: Thu, 26 Sep 2019 20:54:41 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.44L0.1909261943230.24988-100000@netrider.rowland.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: dgilbert@interlog.com
X-Original-Authentication-Results: mx.google.com;       spf=permerror
 (google.com: permanent error in processing during lookup of
 dgilbert@interlog.com: smarthost.freephoneline.ca not found) smtp.mailfrom=dgilbert@interlog.com
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

On 2019-09-26 7:57 p.m., Alan Stern wrote:
> On Fri, 27 Sep 2019, Damien Le Moal wrote:
>=20
>> If a non-passthrough command is terminated with a CHECK CONDITION, the
>> scsi error recovery code reuses the failed command scsi_cmnd structure
>> to process error recovery request sense. To preserve information
>> regarding the failed command, the functions scsi_eh_prep_cmnd() and
>> scsi_eh_restore_cmnd() respectively save and restore the original
>> command information. However, the resid field of the failed command
>> request structure is not preserved and reused for the request sense
>> handling, leading to the original command having an incorrect resid
>> when:
>> A) The command is not retried and terminated with an error
>> B) The command completes after retry and the underlying LLD does not set
>>     resid for a fully completed command (resid=3D0)
>>
>> The first patch of this series addresses case (A) above by adding resid
>> as part of the command information saved using struct scsi_eh_save.
>=20
> Good catch.
>=20
>> Case B can be observed with a WD My Book USB disks when a read or write
>> command is sent to the disk while the disk is in deep sleep mode
>> (spun down) due to a long period of inactivity (~30min).
>> In such case, the following command sequence happen:
>> 1) The read or write command is terminated after a few seconds with
>>     CHECK CONDITION and an asc/ascq of 04/01 (LOGICAL UNIT IS IN PROCESS
>>     OF BECOMING READY)
>> 2) In response to this failure, the USB mass storage driver triggers
>>     autosense processing, reusing the command descriptor to issue a
>>     request sense command with a 96B sense buffer size. The reply
>>     to this command gives a NOT READY / LOGICAL UNIT IS IN PROCESS
>>     OF BECOMING READY sense of 18B, resulting in a resid of 78B.
>> 3) The original command is retried and failed again, with step 2
>>     repeated, until the drive spins up and becomes ready.
>> 4) When the original command completes after the drive has become ready,
>>     the request sense command resid of 78B is seen by the scsi disk
>>     driver sd_done() function and wrongly generates a warning about the
>>     unaligned value reported.
>=20
> But with the 1/1 patch in place, 4 won't happen any more, right?
> sd_done() will see the resid from the successful read or write.
>=20
>> This problem is fixed in patch 2 by always setting a command resid to 0
>> when there is no residual in usb_stor_Bulk_transport(). Note that
>> usb_stor_CB_transport() does not need changes since usb_stor_bulk_srb()
>> always sets the resid for a completed command, regardless of the
>> residual value.
>=20
> Exactly the same reasoning shows that usb_stor_Bulk_transport() also
> does not need changes, doesn't it?  Which means that patch 2/2 is
> unnecessary.
>=20
> Alan Stern
>=20
> PS: The correct term is "residue", not "residual".  I know that the
> code sometimes uses the wrong word.

Digging into my T10 document archive I found this cam3r03.pdf :

   =E2=88=92 cam_resid;
     The data residual length member contains the difference in twos
     complement form of the number of data bytes transferred by the
     HA for the SCSI command compared with the number of bytes
     requested by the CCB cam_dxfer_len member. This is calculated
     by the total number of bytes requested to be transferred by the
     CCB minus the actual number of bytes transferred by the HA.

CAM is a now withdrawn T10 standard from the 1990s that was influential
at the time. FreeBSD's SCSI subsystem is (still) based on CAM.

For a more recent standard/draft there is fcp5r00.pdf that uses the
term "residual value" when defining its fcp_resid.

The only reference to the term "residue" that I found is in CAM: an
optional message: IGNORE WIDE RESIDUE .

So I would leave the naming up to the patch author. It is pretty
clear what is being referred to in either case.

Doug Gilbert


P.S. I prefer "residual" because it is more flexible being both
an adjective and a noun.
[Ref: https://www.lexico.com/en/definition/residual]


--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/631aa72f-4eee-bb5d-a81c-62df3a5a09e8=
%40interlog.com.
