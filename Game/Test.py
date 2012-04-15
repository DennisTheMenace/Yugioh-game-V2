
import pygame

# Define some colors
black    = (   0,   0,   0)
white    = ( 255, 255, 255)
green    = (   0, 255,   0)
red      = ( 255,   0,   0)

pygame.init()

# Set the height and width of the screen
size=[617,360]
screen=pygame.display.set_mode(size)

cardsize = [62,90]
mfpos1 = [16,25]
mfpos2 = [103,25]
mfpos3 = [10,0]
mfpos4 = [10,0]
mfpos5 = [451,25]
mfpos6 = [10,0]
mfpos7 = [10,0]
mfpos8 = [10,0]
mfpos9 = [10,0]
mfpos10 = [10,0]

pygame.display.set_caption("Yugioh Game")
image_surf = pygame.image.load("../Resources/Images/Field.jpg").convert()
#Loop until the user clicks the close button.
done=False

# Used to manage how fast the screen updates
clock=pygame.time.Clock()

# -------- Main Program Loop -----------
while done==False:
    for event in pygame.event.get(): # User did something
        if event.type == pygame.QUIT: # If user clicked close
            done=True # Flag that we are done so we exit this loop
    
    # Set the screen background
    screen.fill(black)
    
    # ALL CODE TO DRAW SHOULD GO BELOW THIS COMMENT
    screen.blit(image_surf, (0,0))
    f = open('log.txt','r')
    source1 = f.readline()
    source1 = source1[:-1]
    
    if source1 != "0":
        
   
        print source1
        mf1image = pygame.image.load(source1)
        screen.blit(mf1image, mfpos1)
        #print "updating"
#pygame.display.update()
    source2 = f.readline()
    source2 = source2[:-1]
    if source2 != "0":
       

        print source2
        mf2image = pygame.image.load(source2)
        screen.blit(mf2image, mfpos2)
        
    source3 = f.readline()
    source3 = source3[:-1]
    if source3 != "0":
        
    
        mf3image = pygame.image.load(source3)
        screen.blit(mf3image, mfpos3)
    source4 = f.readline()
    source4 = source4[:-1]
    if source4 != "0":

        mf4image = pygame.image.load(source4)
        screen.blit(mf4image, mfpos4)
    source5 = f.readline()
    source5 = source5[:-1]
    if source5 != "0":
       
   
        mf5image = pygame.image.load(source5)
        screen.blit(mf5image, mfpos5)
    source6 = f.readline()
    source6 = source6[:-1]
    if source6 != "0":
       
        mf6image = pygame.image.load(source6)
        screen.blit(mf7image, mfpos6)
    source7 = f.readline()
    source7 = source7[:-1]
    if source7 != "0":
        
        mf7image = pygame.image.load(source7)
        screen.blit(mf7image, mfpos7)
    source8 = f.readline()
    source8 = source8[:-1]
    if source8 != "0":
        
        mf8image = pygame.image.load(source8)
        screen.blit(mf8image, mfpos8)
    source9 = f.readline()
    source9 = source9[:-1]
    if source9 != "0":
        
        mf9image = pygame.image.load(source9)
        screen.blit(mf9image, mfpos9)
    source10 = f.readline()
    source10 = source10[:-1]
    if source10 != "0":
        
        mf10image = pygame.image.load(source10)
        screen.blit(mf10image, mfpos10)
   
    
    f.close
    # ALL CODE TO DRAW SHOULD GO ABOVE THIS COMMENT
    
    # Limit to 20 frames per second
    clock.tick(10)
    
    # Go ahead and update the screen with what we've drawn.
    pygame.display.update()

# Be IDLE friendly. If you forget this line, the program will 'hang'
# on exit.
pygame.quit ()