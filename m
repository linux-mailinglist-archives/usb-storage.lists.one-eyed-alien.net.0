Return-Path: <usb-storage+bncBD64ZMV5YYBRBDGQ7TEAMGQETPAIMNQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E19C749B1
	for <lists+usb-storage@lfdr.de>; Thu, 20 Nov 2025 15:39:10 +0100 (CET)
Received: by mail-qt1-x847.google.com with SMTP id d75a77b69052e-4ed782d4c7dsf17048041cf.2
        for <lists+usb-storage@lfdr.de>; Thu, 20 Nov 2025 06:39:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1763649549; cv=pass;
        d=google.com; s=arc-20240605;
        b=Co0o0ltCIA+qMBImyj+wF7RTtCmgRQgDa18zgqT5zrxFzckDAnXCjxW65jHyYLx0SY
         Rt2vAnitEgd+oDKJQmaN5iTCZTcKOTxoQ5FAOAQ35Fk3bbx14jOFt8suqbOV5r7Q+Wje
         V5/OjmZloLAko8UL4qvG/FgFBzzm9Rt54rbkjmvtSYxSgEMJthPpW/DiDZlCINtywAWi
         JVh+c2L7XmDU0taxhOOTjhrEu9yarQ05zsdwqfjZ1L8vsis3dBd93SrfHAf9IKhSMYx6
         pTGaHk6fcA+Hwq6IXFmVHMM50CX1UXF4L9c3RQXsplsWTpqbAH5NH43etX4yCLzMXsrQ
         apYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=dU42+XkFRBRh6RzxTtglbDTZbh9NG+cASDoeuTxtw6M=;
        fh=ynjLtbgZRH+NV8cuSqqyP6U/U7MICrYp09sXPZ1XouE=;
        b=RIJBpjwpgQkUshk1ntLgnpENNOIQ6iLjFEDRQlv8Kry+UqYopERMYicGSJ68AiUgJU
         LghtbtljiF9VnyqsUylQ9g/fuuhBqY54+AHsfsur98rNfvk+8DJLP0cBic3mGJkg31lK
         n/m+w9dEAMFsfQqhgYoZklMxzWY6evsoRatHxHCpaxUPvzP/Fi8eM5D5yb4l7S2D+caF
         8/K21SBqg5GyFRJiOUquqwyaa/80CEmzVMdyORm7nhJlQWATyT6ADGhLK2yEqlLVCY2T
         wqZGVIlrlE0GB6p2fN7UPYok4TH2V/SnVSPKWwoK2YvV2cH2nzWw8YA+rvQN0sa98gqd
         pPgQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=Gpmb54SX;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=neutral header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1763649549; x=1764254349; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dU42+XkFRBRh6RzxTtglbDTZbh9NG+cASDoeuTxtw6M=;
        b=BDVUGheRg3PlAwptzn2O7YVraZSWvfR7SOH+r10V/rCugJs7ot5HvFlezOWmO6QYyd
         i4ZiDta/S0hrhr9OcKfC/jCFjA7CIY6dqWObsgoyOLqMFEuqDLePkDIIEbda9RkUi9EV
         DB7Nj4vXa8q5lTHJ4bbLqNjEawbqQr0omjBWI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763649549; x=1764254349;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-gg:x-beenthere:x-gm-message-state:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dU42+XkFRBRh6RzxTtglbDTZbh9NG+cASDoeuTxtw6M=;
        b=Cbh2cMVjot98aUrG4gKBDzHzmK5hRU2DbYuJmS9kClAc3ruG88a0tMM76u7osGosKw
         K4iszwm88W1OEBRa9Dlb865Npaiihh2AFVwcJzmjo75FXAGgQX3XGGt3zlbFIIz6wfUE
         nI4HxkqveRim0OUOvvdi/IvafHFhBrivW7zOypS6jIcIUbgPkEBcmb+5/FIsUD16CvjI
         CFhntZRzMTbV3+kHKdMvlClAp+YDKAQcp3hklgGPyeFA8qjpg4oF510iA0lb5Bek1g5s
         xvzvRrgvrP5GayfWY+RFXmg5psTzYMGmQ1pE4Xi+BAg3f7+dCA0L33I99P5bxsPVdZTB
         kLKw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCV8Icocd8MSrnZmcvjybphNFO2xcQn9dwzsksw/pF+eTrw89iOrbpvr7z8aN9b89RzJ4cGV1w==@lfdr.de
X-Gm-Message-State: AOJu0Yx5J9BPjCV3vuwyFr/Vt0VaLSWOgia3M+lYMMpLfYa6dK9s+kLO
	Oule48opKckMaMR1YF1DonT0cjQAZM5oHDxiZ1KVk6m6eS2VGANo6GkTvXOw1yU1YdQ=
X-Google-Smtp-Source: AGHT+IGP7Z8kL0nTZ33bs3qQ+juB6WMUFYTSfHna6dyZp6jrA0lZeMp2QmbiCsV/pJ5IdUMrORCp0w==
X-Received: by 2002:ac8:7e95:0:b0:4e6:ebe3:9403 with SMTP id d75a77b69052e-4ee4d6969bamr25082911cf.41.1763649549110;
        Thu, 20 Nov 2025 06:39:09 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+beRhpxqCugiO9M4gCnYfhTHGHj4Fj5K6fLAqt9bKFELg=="
Received: by 2002:a05:622a:244:b0:4ed:3036:f1ac with SMTP id
 d75a77b69052e-4ee48fabdf1ls19333751cf.0.-pod-prod-01-us; Thu, 20 Nov 2025
 06:39:08 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVYoIdzhUh/KGhvqCwRbdPz/Ywvo2dE9UmTFvzDJleA/yqY3UIgVmiTBT2eUQZnNvwnnpUPcZgOcIABxg==@lists.one-eyed-alien.net
X-Received: by 2002:ac8:5a08:0:b0:4ee:bff:7fbf with SMTP id d75a77b69052e-4ee4d3954e5mr25968121cf.4.1763649548048;
        Thu, 20 Nov 2025 06:39:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1763649548; cv=none;
        d=google.com; s=arc-20240605;
        b=fuskamVi3hivMDXWEZiCrokfSEPW24ePkl/WAnShiADgu5pl/F2HHuOw7t5bYxNSII
         z6JjB0A6WKEON/BXNYWjZ9mg2ukRHMDaNzBJ52/VF7sI5cD8axC2hQcFMbRhPGBv69Lh
         OCufCjjd8ZbQ4DjbYSMbpjd2fnonv87PvvgDWw1EBDHFa0a+jrKYrA+lNVSDgQzPo0iM
         g3YbCPTnyoRMGmPfL1hdaT3pNC36V7kIGpaHt2tvucZi725SwkXO5FsheSjXVxpKRp9P
         Q8mOjT4ADdSDxHMz5RyISp7sQFNDSCysBTpQEKCrbmoSiHl244xWDaiFBR51WSAn1Y2s
         c/Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Tsyge+UTNr06nxUBEgnp5/PyL3z7XzvVYDHeavNl7wg=;
        fh=lzEmN5nsVrsy3GqCW/Weot5jAdkhoWXLknPkliGUqNI=;
        b=apSSCMKD3ETmx7q2v7FKcfx4Bc19f357or5+dAZiWqEhKu9cfW8oIDYWeF/u7lJRlz
         S9kWWwb7+uDXL5bRieM8gVVXWN9b0K71bp+eXrzjrGCIdac4oHqKVOtvycrZRYW3b09J
         CWMtV1EeIki8pp92KxWUXn6Q1Nh8sDZNfmdVgg5FxHRa8j0aoDmCrriQ8Lwq+TuoJGHY
         KKdxqnGuBmCwu7YNo66l+vSANvuoQLu5QfACxi7cGvw63JiOMB9lV3AqugN6nTvipm2n
         jmF32qOSRE9gyXVDqhj/wKtKSt1qzh3Ao7NCC/2k6BwNMCX9Q6tN3k78oVwu8sKAzIZo
         KqWg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=Gpmb54SX;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=neutral header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 6a1803df08f44-8846e598bc4sor18570946d6.12.2025.11.20.06.39.07
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 20 Nov 2025 06:39:08 -0800 (PST)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCXDcDZRczjXURq1qYsvbAA0GGzao/R0pt24XxaeWIJWu+x8p2FIEQt6ibQwzrNO1XYxIoTlrYKb6ieD/A==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncu357dxRtLS2SIuV3cjFqfEiyLNrAffgIoP2jKmLfCEjU13egz/1Nxt2IFw7JJ
	kgebbGv6nAsXpV1vipT6QldWCuuXpJOtPiaO8CK5cSWQ3RbRWPeYPquxPRtwKgPvhk4Ec8TA/89
	0JObfaXrn7rgFdSeFIehDlctGeA0WlcwCOxQ2cwnRz/E1+tEv0kcprq21IFLqzYgjNnVHhh5tc8
	NRnID2yMbuhjEDCUSFqeX9zv3HqRrj4AC21DCmE3jwx2JT1cZQFxQlqGv6UN3xYW8YPFBELI0FJ
	kHUvaO3WHv/vKgenB9Ra9APPEqro2bKxDrzytX6SMlqbIduTopeoISW5w0O88rOtZ+jlaiMxEVI
	ikv5qnHwg58dX2f+5JH0BG/GAKI7GsmGuyEe/1W/WPep2+hGc6xcKLQqkQDUjOsXrAfnsinvsYt
	lLa58cDwBoQN6mjX5tlZcLqzGuFZTOs1PWOVITi0Na
X-Received: by 2002:ac8:594d:0:b0:4ee:278c:bde7 with SMTP id d75a77b69052e-4ee4d3c049bmr24878881cf.23.1763649547529;
        Thu, 20 Nov 2025 06:39:07 -0800 (PST)
Received: from rowland.harvard.edu ([140.247.181.15])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ee48b45ccesm16629521cf.0.2025.11.20.06.39.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 06:39:07 -0800 (PST)
Date: Thu, 20 Nov 2025 09:39:05 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: David Laight <david.laight.linux@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [usb-storage] Re: [PATCH 28/44] drivers/usb/storage: use min()
 instead of min_t()
Message-ID: <431b212d-e55d-4936-9318-a3fcf64b69af@rowland.harvard.edu>
References: <20251119224140.8616-1-david.laight.linux@gmail.com>
 <20251119224140.8616-29-david.laight.linux@gmail.com>
 <4208129f-a768-44e2-843f-309c50ea362f@rowland.harvard.edu>
 <20251120091802.0b238c96@pumpkin>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20251120091802.0b238c96@pumpkin>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=Gpmb54SX;
       spf=pass (google.com: domain of stern@g.harvard.edu designates
 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=neutral header.i=@lists.one-eyed-alien.net
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

On Thu, Nov 20, 2025 at 09:18:02AM +0000, David Laight wrote:
> On Wed, 19 Nov 2025 21:59:42 -0500
> Alan Stern <stern@rowland.harvard.edu> wrote:
> 
> > On Wed, Nov 19, 2025 at 10:41:24PM +0000, david.laight.linux@gmail.com wrote:
> > > From: David Laight <david.laight.linux@gmail.com>
> > > 
> > > min_t(unsigned int, a, b) casts an 'unsigned long' to 'unsigned int'.
> > > Use min(a, b) instead as it promotes any 'unsigned int' to 'unsigned long'
> > > and so cannot discard significant bits.
> > > 
> > > In this case the 'unsigned long' value is small enough that the result
> > > is ok.
> > > 
> > > Detected by an extra check added to min_t().  
> > 
> > In fact, min_t(T, a, b) cannot go wrong as long as all the types are 
> > unsigned and at least one of a, b has type T or smaller.
> 
> That is backwards, both a and b have to have types at least as large
> as T (or rather values that will fit in T).
> - which is exactly what people keep getting wrong.
> Consider:
> 	u32 a = 4;
> 	u64 b = 0x100000001ull;
> then:
> 	min_t(u32, a, b)
> has value 1 not 4.

You are right.  For some reason I was thinking that the comparison took 
place before the casts, which doesn't make any sense.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/431b212d-e55d-4936-9318-a3fcf64b69af%40rowland.harvard.edu.
