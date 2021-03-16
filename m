Return-Path: <usb-storage+bncBD6LRVPZ6YGRBIWKYOBAMGQEYLLOBIQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5C233DA32
	for <lists+usb-storage@lfdr.de>; Tue, 16 Mar 2021 18:04:35 +0100 (CET)
Received: by mail-qt1-x845.google.com with SMTP id m35sf13798044qtd.11
        for <lists+usb-storage@lfdr.de>; Tue, 16 Mar 2021 10:04:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615914275; cv=pass;
        d=google.com; s=arc-20160816;
        b=tJGNuq3ZduVzA4LXiZQVyWjClzM/lTPbm10r6ozCovc1kbd8P8NbBikXrW3lcKPCtI
         xMb46VUMogR9LxBBecWW+cxpJaCD+AkE58Hx6eYWKOemVaPSPSUQZnJE/iK9yzNKUAQV
         3iAYFvLLilSrPX2OA38uI4B/+Gt9/7z/yEss065XFbTbYzS97UODjY9RjuSzQ3gARcpT
         4sPKx9W5KhlMsthV+slRIij7P6eMRhSyDAJI8fNPdv/w3Ap19XF1mIBnXE2xCgcM8RIb
         fy2s8gXhOwQeVrIeO+RKOeZFd/joZNlpk2Skmtfqu9nbQNWfcbPZ+Nq1+LaD52iRo6Ho
         /7oA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=vWXSFOlifybYGlIpWencrFppfNjh6mtdvEMqMc4iwDc=;
        b=kRDsczvR61XuNOVHhsQRmM6lP/N0G910zABtIeKKMJxuwr52Tu1d125gsOc7ZoxCX7
         WvjlHWwIRGPTZzHpecmJ7V4O+izydCSQjmsmQfpX19OD34NJugfA8xIvhioGF/MU9lPo
         gl1jL46lXVuOPv3dKy/OLXzDbB472gP+7yljw4DFMDabcNDNMBOmmjxLVUOJATLEt5jo
         AkV5GIl0l8T+K2pQzmT2iCfLrcolunWffaDtEOVuYqgQ3Wli4MIYP1SAtrpmFhHp+rJF
         +fDNr9PXwavTTTDwWf0RiLSHWKaoVkJLmwdEi+R6lHYP5fn8/Mz9sa9PdHDfek6NVIqF
         FJWw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vWXSFOlifybYGlIpWencrFppfNjh6mtdvEMqMc4iwDc=;
        b=Lu4OTpu8aXe2l6sdc3EA74D/6HQUlpoiqHCoePKXghH33OddZGXEA1Yp2O/rjkRPcO
         AY5KhEjUtl+YhXiG/GdsCtPjuKlLMHGIO7OTlUke8LI0xZdarD2PL7ZFLdrcGpsG8Ihw
         gTXkvnQnMCmTvCtGWMmQxnjhpYeTf5kXia4HM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vWXSFOlifybYGlIpWencrFppfNjh6mtdvEMqMc4iwDc=;
        b=Rxl1DwoGYQecgVaPou6HqRawYkEG7ABIQJQcEzuPwPTvsR78O8I29nkdMJCq6MsmZf
         0c/fuzYVYpSSze0Kv42BgbHXiuTSC7UsDO9Kk/4iI1u4+visv4aqcL65kmfcp4eIqDnX
         FLR5IS2uH/m9MCcY54MkYfTv156ev8Rp3NvQDJnDo6a7klDy7f6oYMTUpvdZtBU+wKVR
         200CpW1bQA3vH6QcO9LCEtwYkRIU2c3BEm26zLYkRlXDpcOOLDSNTo+9ANfHVNkvXiCp
         s7k0iFdCgWULUveSwobB0PAJgQ5hjeaQR7OcBUTkmlI1YRyDb/mZXfaj1p17RIfJ2qij
         vnJA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530MzR+1a1V7KzHkND0YH5E/l8FiM0sE9e2Mcb6Ron4mv7TmuXoe
	M/4KONF9erfN109bboS5WE+8yA==
X-Google-Smtp-Source: ABdhPJy/JOm09XYxD6yVEGECh7B9UFQETr/cQz3Bl+rN3dsihiYy4vyLRh4cIpVI4BLcpmXFB40Byw==
X-Received: by 2002:ac8:5951:: with SMTP id 17mr669771qtz.62.1615914274834;
        Tue, 16 Mar 2021 10:04:34 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a0c:df0a:: with SMTP id g10ls3145981qvl.0.gmail; Tue, 16 Mar
 2021 10:04:34 -0700 (PDT)
X-Received: by 2002:a05:6214:9c9:: with SMTP id dp9mr698588qvb.34.1615914274240;
        Tue, 16 Mar 2021 10:04:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615914274; cv=none;
        d=google.com; s=arc-20160816;
        b=OdqQOAslfc4E5hLEv8oJdDybfQwPSO9PGKvLMMMwmAfpqL6cuQQ6AsYTMlAuoEX1nN
         nlcCtfobSlfMgwTe37MVVsAz/OcTDV/tKIpaDcrZFqGPqfSu3Rwhc8QZF1u93vxcdEvh
         PWCjSH6fCU9JwdkhvAiJ1C7szd2THnJIdmy95KoDKUZB7mmxvsVu6KDDT0l4lBZ68dXk
         ETjbKnUfW0qM6+rkXZJIv0FbaGB+BtVxsE1rWD4i/PJziiDuSQvxm1RdYcBk9eIQdaOR
         FuV+2UiyK/2xSJ8FR0Wy35ptjLRTVJ+1xRcoEdTcN/6tBzZm+Krq9LmIRj9a+aClPpxx
         BuGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=GiVyFR2cV2ZuJFwE7ZjLhhauWO3rCHr2FlZEDCaaZbk=;
        b=kBHyKs8A76dj/6HdZVBV88HmOzSyAzleNXBM04pGYWl4Xdy2U3WleidDhwxWRJxXPN
         bCRw4tjsZKkE+DFsSG68KBIbrRCoUvayzQ4UoWGsfOrlGlYhvMZWLy4uLFh7z9OOvrqw
         YNbg0TJ0dmKAa9PMkPcCLEdhFtK5+H/uLva5xVBfp1PKHnBY8m7oflpgwDhMG7my8i+z
         pjoAD5x5vAlzqGJwGIHLgs/rgV2SoHAeounlGVz/MTPZr9yfk3R3nxThYzVxyeoF89zD
         QRfNlr0/p9FgFQOUcUgIzCCR/LiE4Sv9wMCkY4+YzfDXV0T6wIeHHajEGc43p8xaddGC
         asZQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id w23si10874513qto.279.2021.03.16.10.04.34
        for <usb-storage@lists.one-eyed-alien.net>;
        Tue, 16 Mar 2021 10:04:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 453081 invoked by uid 1000); 16 Mar 2021 13:04:33 -0400
Date: Tue, 16 Mar 2021 13:04:33 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Hans de Goede <hdegoede@redhat.com>
Cc: Matthias Schwarzott <zzam@gentoo.org>,
  usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org,
  systemd-devel@lists.freedesktop.org, hirofumi@mail.parknet.co.jp
Subject: Re: [systemd-devel] [usb-storage] Re: Amazon Kindle disconnect after
 Synchronize Cache
Message-ID: <20210316170433.GD448722@rowland.harvard.edu>
References: <20210307165856.GA104554@rowland.harvard.edu>
 <268e646f-d4ea-3190-f1b9-8e69bfc1b019@gentoo.org>
 <20210309155046.GA176674@rowland.harvard.edu>
 <dfd2b281-3beb-9869-37b6-8bd48a6cf40f@gentoo.org>
 <20210310214648.GA236329@rowland.harvard.edu>
 <841a9a54-78ee-ffaa-fc3c-12defcf43b36@gentoo.org>
 <20210311143912.GA257360@rowland.harvard.edu>
 <f2acfeef-a81a-d7c0-90a8-b290a18cb742@gentoo.org>
 <20210316162650.GB448722@rowland.harvard.edu>
 <031a20c5-27c3-cc13-6e0b-a308644abce4@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <031a20c5-27c3-cc13-6e0b-a308644abce4@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
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

On Tue, Mar 16, 2021 at 05:43:34PM +0100, Hans de Goede wrote:
> Hi,
> 
> On 3/16/21 5:26 PM, Alan Stern wrote:
> > On Tue, Mar 16, 2021 at 06:26:30AM +0100, Matthias Schwarzott wrote:
> >> I implemented solution 3b. This is the pullrequest for udev (systemd
> >> repository):
> >>
> >> 	https://github.com/systemd/systemd/pull/19002
> >>
> >> Now Lennart asks if udev is the best place for such hacks/work-arounds?
> >>
> >> Well, I implemented it as suggested by Alan (see above). This was the
> >> simplest of the considered alternatives. Different quirks in kernel has been
> >> considered, but are more effort to be implemented.
> > 
> > Lennart probably isn't aware how the usb-storage driver works.  It does 
> > not create commands on its own; it merely sends the commands that it 
> > gets from higher SCSI layers.
> > 
> > It may be possible to modify the SCSI core, to make it send a TEST UNIT 
> > READY command immediately following any SYNCHRONIZE CACHE to a Kindle.
> > 
> > However, there may be an easier solution.  usb-storage does indeed send 
> > a command of its own, REQUEST SENSE, to get error data when a command 
> > fails.  The patch below will make it do the same thing whenever it sends 
> > a SYNCHRONIZE CACHE to a Kindle, failure or not.
> > 
> > The only question is whether the Kindle will regard REQUEST SENSE as a 
> > sufficient indication that it shouldn't do an eject.  The only way to 
> > find out is by testing the patch.
> > 
> > Alan Stern
> 
> Thank you for this patch, yes if this works it would IMHO be
> a much better solution then the udev rule.

I think it would be mildly better, but not a whole lot.  Since the 
Kindle describes itself as having removable media, the kernel normally 
probes it periodically to make sure the media remains present.  The 
default probing interval is 2 seconds.  Reducing it to 0.9 seconds 
doesn't represent an exorbitant additional load IMO -- especially since 
Kindles don't tend to spend huge amounts of time connected to computers.

If it's merely a question of where to change the polling interval from 
the default (automatically in the kernel or by userspace), that also 
doesn't seem like a terribly important choice.  Certainly a udev rule or 
hwdb entry is a lot easier to maintain than special-case code in the 
kernel.

> One question though, if this works to fix the undesired ejects,
> will an actual eject (using e.g. the eject utility as say
> "sudo eject /dev/sda") still be seen as an eject by the kindle
> after this ?

It should be.  Maybe Matthias will try it and let us know.

> Because that is actually kind of important for everyone using their
> Kindle with Calibre, breaking that would not be good.

Of course.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20210316170433.GD448722%40rowland.harvard.edu.
